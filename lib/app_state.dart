import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _loggedInUser = '';
  String get loggedInUser => _loggedInUser;
  set loggedInUser(String value) {
    _loggedInUser = value;
  }

  String _loggedInUserPass = '';
  String get loggedInUserPass => _loggedInUserPass;
  set loggedInUserPass(String value) {
    _loggedInUserPass = value;
  }
}
