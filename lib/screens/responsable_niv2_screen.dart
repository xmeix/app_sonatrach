import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsableN2AcceuilScreen extends StatefulWidget {
  const ResponsableN2AcceuilScreen({Key? key}) : super(key: key);
  static String routeName = "/res2";
  @override
  State<ResponsableN2AcceuilScreen> createState() =>
      _ResponsableN2AcceuilScreenState();
}

class _ResponsableN2AcceuilScreenState
    extends State<ResponsableN2AcceuilScreen> {
  bool loggedIn = false;
  User? user = Auth().currentUser!;
  Utilisateur? userTest;

  @override
  void initState() {
    super.initState();
    user = Auth().currentUser;
    loggedIn = Auth().isUserLoggedIn();
    getUser();
  }

  Future getUser() async {
    await Auth().getUser().then((snap) => setState(() {
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsable 2"),
        ),
        body: _signOutButton());
  }
}
