import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PersonnelAcceuilScreen extends StatefulWidget {
  const PersonnelAcceuilScreen({Key? key}) : super(key: key);
  static String routeName = "/pers";

  @override
  State<PersonnelAcceuilScreen> createState() => _PersonnelAcceuilScreenState();
}

class _PersonnelAcceuilScreenState extends State<PersonnelAcceuilScreen> {
  bool loggedIn = false;
  User? user = Auth().currentUser as User?;
  Utilisateur? userTest;

  @override
  void initState() {
    super.initState();
    user = Auth().currentUser as User?;
    loggedIn = Auth().isUserLoggedIn();
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
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false);
        },
        child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(userTest?.nom ?? "nom"),
        ),
        body: _signOutButton());
  }
}
