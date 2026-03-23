import 'package:shared_preferences/shared_preferences.dart';

class LocalPreferences {
  // Singleton instance
  static late final LocalPreferences instance;

  final SharedPreferences sharedPreferences;

  // Private constructor
  LocalPreferences._internal(this.sharedPreferences);

  // Factory initializer
  factory LocalPreferences.init(SharedPreferences sharedPreferences) {
    instance = LocalPreferences._internal(sharedPreferences);
    return instance;
  }

  factory LocalPreferences() => instance;

  Future<void> setBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  bool? getBool(String key) {
    return sharedPreferences.getBool(key);
  }

  Future<void> setString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }

  String? getString(String key) {
    return sharedPreferences.getString(key);
  }

  Future<void> clear() async {
    await sharedPreferences.clear();
  }
}
