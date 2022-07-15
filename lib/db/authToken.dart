import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthToken with ChangeNotifier {
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI3ZmY3Yzc1OS1jOTdiLTQ4MWUtOWIxNS04MWMwZGUxZjliOTQiLCJpYXQiOjE2NTc4OTk3NzUsImV4cCI6MTY1ODUwNDU3NX0.Mg5d3grL3GwUtPsOofpZbttV7qpt1Extf6gO6uwU6Y4";
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
