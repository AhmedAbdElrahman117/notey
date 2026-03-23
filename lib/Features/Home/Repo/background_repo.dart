import 'package:notey/Features/Note/Data/sync_service.dart';
import 'package:workmanager/workmanager.dart';

class BackgroundRepo {
  Future<void> registerBackgroundTask(String task) async {
    SyncService().checkSyncStatus(
      () async {
        await Workmanager().registerPeriodicTask(
          DateTime.now().toString(),
          task,
          frequency: const Duration(minutes: 15),
          initialDelay: const Duration(minutes: 15),
          constraints: Constraints(
            networkType: NetworkType.connected,
            requiresBatteryNotLow: true,
          ),
        );
      },
    );
  }

  Future<void> cancelAllBackgroundTasks() async {
    await Workmanager().cancelAll();
  }
}
