import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  registerUser({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  loginUser({
    required String email,
    required String password,
  }) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  logoutUser() async {
    await FirebaseAuth.instance.signOut();
  }
}
