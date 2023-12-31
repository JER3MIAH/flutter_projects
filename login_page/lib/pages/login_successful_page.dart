import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginSuccessfulPage extends StatelessWidget {
  const LoginSuccessfulPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Successful'),
        actions: [
          TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: const Text('Sign out'))
        ],
      ),
    );
  }
}
