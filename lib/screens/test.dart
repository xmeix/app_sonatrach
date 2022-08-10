import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/personnel_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_niv2_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);
  static String routeName = "/";
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  //is the user loged in
  bool loggedIn = Auth().isUserLoggedIn();
  User? user = Auth().currentUser;
  Utilisateur? userTest;

  @override
  void initState() {
    super.initState();
    user = Auth().currentUser;
    loggedIn = Auth().isUserLoggedIn();

    getUser();
  }

  Future getUser() async {
    await Auth().getUser().then((value) => setState(() {
          userTest = value;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if (userTest?.role == "personnelSimple") {
            return const PersonnelAcceuilScreen();
          } else if (userTest?.role == "responsableNiv2") {
            return const ResponsableN2AcceuilScreen();
          } else if (userTest?.role == "responsableNiv1") {
            return const ResponsableN1AcceuilScreen();
          }

          return const Scaffold(
              body: Center(child: CircularProgressIndicator()));
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
