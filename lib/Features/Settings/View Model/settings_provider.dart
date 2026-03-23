import 'package:flutter/material.dart';
import 'package:notey/Core/biometric_service.dart';
import 'package:notey/Core/app_database.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/supabase_auth.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Home/Repo/background_repo.dart';
import 'package:notey/Features/Settings/Services/export_service.dart';
import 'package:notey/Features/Settings/Services/import_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:notey/generated/l10n.dart';

class SettingsProvider extends ChangeNotifier {
  bool isLoading = false;

  User? currentUser;

  bool enableFingerprint = false;

  final List<String> tasks = [
    'addNotes',
    'updateNotes',
    'deleteNotes',
    'addCategories',
    'updateCategories',
    'deleteCategories',
  ];

  final BackgroundRepo backgroundRepo = BackgroundRepo();

  final BiometricService service = BiometricService();

  bool isSyncEnabled = LocalPreferences.instance.getBool('sync') ?? false;

  SettingsProvider() {
    isLoggedIn();
    checkBiometricAvailability();
  }

  void setLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  void isLoggedIn() {
    currentUser = SupabaseAuth().isLoggedIn();
    notifyListeners();
  }

  void triggerSync(bool isEnabled) async {
    setLoading(true);
    isSyncEnabled = isEnabled;

    await LocalPreferences.instance.setBool('sync', isEnabled);
    if (isEnabled) {
      for (var task in tasks) {
        await backgroundRepo.registerBackgroundTask(task);
      }
    } else {
      await backgroundRepo.cancelAllBackgroundTasks();
    }
    setLoading(false);
  }

  void checkBiometricAvailability() async {
    var hasAuthBiometrics = await service.hasEnrolledBiometrics();
    var canAuth = await service.canAuth();

    if (canAuth && hasAuthBiometrics) {
      enableFingerprint = true;
      notifyListeners();
    }
  }

  Future<void> exportNotes({required String password}) async {
    setLoading(true);

    var res = await ExportService(password: password).export();

    await res.fold(
      (error) {
        Toast.showFailed(message: error.getException());
      },
      (data) {
        Toast.showSuccess(message: S.current.exportedSuccessfully);
      },
    );
    setLoading(false);
  }

  Future<void> importNotes({
    required Future<String?> Function() filePassword,

    required Future<ConflictAction> Function(AppDatabase db) onConflict,
  }) async {
    setLoading(true);

    var res = await ImportService().import(
      filePassword: filePassword,
      onConflict: onConflict,
    );

    await res.fold(
      (error) {
        Toast.showFailed(message: error.getException());
      },
      (data) {
        Toast.showSuccess(message: S.current.importedSuccessfully);
      },
    );
    setLoading(false);
  }

  void logout() async {
    setLoading(true);
    await LocalPreferences.instance.setBool('sync', false);
    await SupabaseAuth().logout();
    isLoggedIn();
    setLoading(false);
  }
}
