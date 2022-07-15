import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthToken with ChangeNotifier {
  String token = "";
  SharedPreferences? _prefs;

  AuthToken() {
    initPrefs();
  }
  String? get getToken {
    return token;
  }

  Future<void> initPrefs() async {
    var _prefs = await SharedPreferences.getInstance();

    var tokens = _prefs.getString("token");
    if (tokens != null) {
      token = tokens;
      notifyListeners();
    }
  }

  getPref() async {
    var _prefs = await SharedPreferences.getInstance();
    var tokens = _prefs.getString("token");
  }

  Future<void> setToken(String newtoken) async {
    var _prefs = await SharedPreferences.getInstance();
    // print(newtoken);
    token = newtoken;
    notifyListeners();
    // print(token);
    await _prefs.setString("token", token);
    var tokens = _prefs.getString("token");
    print(tokens);
    return;
  }
}
