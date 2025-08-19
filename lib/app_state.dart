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

  String _theadId = '';
  String get theadId => _theadId;
  set theadId(String value) {
    _theadId = value;
  }

  String _phoneVerification = '';
  String get phoneVerification => _phoneVerification;
  set phoneVerification(String value) {
    _phoneVerification = value;
  }

  bool _otpCodeVerify = false;
  bool get otpCodeVerify => _otpCodeVerify;
  set otpCodeVerify(bool value) {
    _otpCodeVerify = value;
  }

  double _currentMonthCost = 0.0;
  double get currentMonthCost => _currentMonthCost;
  set currentMonthCost(double value) {
    _currentMonthCost = value;
  }
}
