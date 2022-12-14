// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:app_sonatrach/screens/demande_screen.dart';
import 'package:app_sonatrach/screens/personnel_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_niv2_screen.dart';
import 'package:app_sonatrach/screens/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app_sonatrach/screens/list_screen.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SonatrachApp());
}

class SonatrachApp extends StatelessWidget {
  const SonatrachApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sonatrach",
      initialRoute: "/",
      routes: {
        TestScreen.routeName: (context) => TestScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        ListScreen.routeName: (context) => ListScreen(),
        PersonnelAcceuilScreen.routeName: (context) => PersonnelAcceuilScreen(),
        ResponsableN1AcceuilScreen.routeName: (context) =>
            ResponsableN1AcceuilScreen(),
        ResponsableN2AcceuilScreen.routeName: (context) =>
            ResponsableN2AcceuilScreen(), 
      },
    );
  }
}
