import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media_app/firebase_options.dart';
import 'package:social_media_app/logic/services/auth_service.dart';
import 'package:social_media_app/theme/theme.dart';
import 'package:social_media_app/ui/features/pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Social Media App',
        theme: lightMode,
        darkTheme: darkMode,
        home: const AuthPage(),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          AuthToggle.routeName: (context) => const AuthToggle(),
          UsersPage.routeName: (context) => const UsersPage(),
          ProfilePage.routeName: (context) => const ProfilePage(),
          ConnectPage.routeName: (context) => const ConnectPage(),
        },
      ),
    );
  }
}
