import 'package:shared_preferences/shared_preferences.dart';

//TODO: if we can make it as a modular function for now lets put it in each class

class SharedPrefHelper {

  // saves a list in the local storage
  static Future<void> saveStringList(String key, List<String> value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(key, value);
  }

  // fetches a list from the local storage
  static Future<List<String>?> getStringList(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(key);
  }

  // saves a single value in the local storage
  static Future<void> saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // fetch a single value from the local storage
  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  //removes from local storage
  static Future<void> remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  // clear all
  static Future<void> clearAll() async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}