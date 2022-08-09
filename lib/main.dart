// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:app_sonatrach/screens/home_screen.dart';
import 'package:app_sonatrach/screens/list_screen.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/personnel_home_screen.dart';
import 'package:app_sonatrach/screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const SonatrachApp());
}

class SonatrachApp extends StatelessWidget {
  const SonatrachApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sonatrach dz",
      initialRoute: "/",
      routes: {
        '/': (context) => HomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        ListScreen.routeName: (context) => ListScreen(),
        PersonnelHomeScreen.routeName: (ctx) => PersonnelHomeScreen(),
      },
    );
  }
}
