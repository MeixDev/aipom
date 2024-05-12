import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPrefs {
  factory AppSharedPrefs() {
    if (_instance case final AppSharedPrefs instance) return instance;
    throw Exception('AppSharedPrefs must be initialized first. '
        'Please call AppSharedPrefs.ensureInitialized before.');
  }

  const AppSharedPrefs._();
  static AppSharedPrefs? _instance;
  static SharedPreferences? _prefs;

  static Future<void> ensureInitialized() async {
    _prefs ??= await SharedPreferences.getInstance();
    _instance ??= const AppSharedPrefs._();
  }

  /*
  ** Project History
  */

  static const _projectHistoryKey = 'projectHistory';
  List<String> get projectHistory {
    if (_prefs case final SharedPreferences prefs) {
      final history = prefs.getStringList(_projectHistoryKey);
      if (history == null) return [];
      return history;
    }
    throw Exception('AppSharedPrefs must be initialized first. '
        'Please call AppSharedPrefs.ensureInitialized before.');
  }

  set projectHistory(List<String> history) => updateProjectHistory(history);
  Future<void> updateProjectHistory(List<String> history) async {
    if (history.sublist(0, history.length).any((e) => e == history.last)) {
      final index = history.firstWhere((e) => e == history.last);
      history.removeAt(history.indexOf(index));
      final value = history.removeLast();
      history.insert(0, value);
    }
    while (history.length > 3) {
      history.removeLast();
    }
    if (_prefs case final SharedPreferences prefs) {
      await prefs.setStringList(_projectHistoryKey, history);
    }
    throw Exception('AppSharedPrefs must be initialized first. '
        'Please call AppSharedPrefs.ensureInitialized before.');
  }
}
