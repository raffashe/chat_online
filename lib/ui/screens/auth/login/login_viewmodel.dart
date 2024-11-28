import 'dart:developer';

import 'package:chat_online/core/other/base_viewmodel.dart';
import 'package:chat_online/core/services/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginViewmodel extends BaseViewmodel {
  final AuthService _auth;

  LoginViewmodel(this._auth);

  String _email = '';
  String _password = '';

  void setEmail(String value) {
    _email = value;
    notifyListeners();
    log("Email: $_email");
  }

  setPassword(String value) {
    _password = value;
    notifyListeners();
    log("Password $_password");
  }

  login() async {
    try {
      await _auth.login(_email, _password);
    } on FirebaseAuthException catch (e) {
      rethrow;
    } catch (e) {
      log(e.toString());
    }
  }
}
