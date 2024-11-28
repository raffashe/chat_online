import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<User?> signup(String email, String password) async {
    try {
      final authCredential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      if (authCredential.user != null) {
        log("User created successfully");
        return authCredential.user!;
      }
    } on FirebaseAuthException catch (e) {
      log(e.message!);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  /// login ------------------------------------

  Future login(String email, String password) async {
    try {
      final authCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      if (authCredential.user != null) {
        log("User loggedin successfully");
        return authCredential.user!;
      }
    } on FirebaseAuthException catch (e) {
      log(e.message!);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
