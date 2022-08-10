import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/personnel_acceuil_screen.dart';
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

    getUser();
  }

  Future getUser() async {
    await Auth().getUser(user!.uid).then((snap) => setState(() {
          userTest = snap;
        }));
  }

  Future<void> signOut() async {
    await Auth().signOut().then((value) {});
  }

  Widget _signOutButton() {
    return ElevatedButton(
        onPressed: () {
          signOut();
        },
        child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          if (userTest != null) {
            return const PersonnelAcceuilScreen();
          } else
            return LoginScreen();
        } else {
          return const LoginScreen();
        }
      }),
    );
  }
}
