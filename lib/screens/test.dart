import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
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
  late User user;
  Utilisateur? userTest;
  @override
  void initState() {
    super.initState();
    user = Auth().currentUser!;
    getUser();
  }

  Future getUser() async {
    await Auth().getUser(user.uid).then((snap) => setState(() {
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
    if (userTest != null) {
      return const PersonnelAcceuilScreen();
    } else
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(loggedIn.toString()),
    //   ),
    //   body: user != null
    //       ? Column(
    //           children: [
    //             Text(userTest?.email ?? ""),
    //             _signOutButton(),
    //           ],
    //         )
    //       : Center(child: CircularProgressIndicator()),
    // );
  }
}
