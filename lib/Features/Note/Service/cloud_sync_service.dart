import 'package:notey/Core/local_preferences.dart';

class CloudSyncService {
  static final bool sync = LocalPreferences.instance.getBool('sync') ?? false;
}
