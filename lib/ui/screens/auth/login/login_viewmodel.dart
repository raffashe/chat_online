import 'dart:developer';

import 'package:chat_online/core/other/base_viewmodel.dart';
import 'package:chat_online/core/services/auth_service.dart';

class LoginViewmodel extends BaseViewmodel {
  final AuthService _auth;

  LoginViewmodel(this._auth);

  String _email = '';
  String _password = '';

  setEmail(String value) {
    _email = value;
    notifyListeners();
  }

  setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  signup() async {
    try {
      await _auth.signup(_email, _password);
    } catch (e) {
      log(e.toString());
    }
  }
}
