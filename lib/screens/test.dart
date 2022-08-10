import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/screens/personnel_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_acceuil_screen.dart';
import 'package:app_sonatrach/screens/responsable_niv2_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
  User? user = FirebaseAuth.instance.currentUser();
  String? uid;
  Utilisateur? userTest;

  @override
  void initState() {
    super.initState();
    user = Auth().currentUser;
    loggedIn = Auth().isUserLoggedIn();

    getUser();
  }

  // Future getUser() async {
  //   try {
  //     var userData =
  //         await FirebaseFirestore.instance.collection("users").doc(uid).get();
  //     setState(() {
  //       userTest = Utilisateur.fromJson(userData.data()!);
  //     });
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }
  Future getUser() async {
    await Auth().getUser().then((value) => setState(() {
          userTest = value;
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
    return StreamBuilder<User?>(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          getUser();
          uid = snapshot.data?.uid;
          if (userTest?.role == "personnelSimple") {
            return PersonnelAcceuilScreen();
          } else if (userTest?.role == "responsableNiv2") {
            return ResponsableN2AcceuilScreen();
          } else if (userTest?.role == "responsableNiv1") {
            return ResponsableN1AcceuilScreen();
          } else {
            return Scaffold(
                appBar: AppBar(
                  title: Text(userTest?.role ?? "role"),
                ),
                body: _signOutButton());
          }
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
