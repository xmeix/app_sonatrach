// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:app_sonatrach/widgets/carte.dart';
import 'package:app_sonatrach/widgets/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsableN1AcceuilScreen extends StatefulWidget {
  const ResponsableN1AcceuilScreen({Key? key}) : super(key: key);
  static String routeName = "/res1";

  @override
  State<ResponsableN1AcceuilScreen> createState() =>
      _ResponsableN1AcceuilScreenState();
}

class _ResponsableN1AcceuilScreenState
    extends State<ResponsableN1AcceuilScreen> {
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
      body: Column(
        children: [
          NavBar(title: 'Acceuil Responsable'),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 55,
                  vertical: 60,
                ),
                child: Column(
                  children: [
                    Carte(
                      nom: "Mes Demandes De Bons de sortie",
                      description:
                          'Cette demande concerne les employés qui veulent une demande de bon de sortie',
                    ),
                    SizedBox(height: 15),
                    Carte(
                      nom: "Les demandes De Bons de congé",
                      description:
                          'Cette demande concerne les employés qui veulent une demande de congé',
                    ),
                    SizedBox(height: 15),
                    Carte(
                      nom: "Mes Demandes De Bons de sortie",
                      description:
                          'Cette demande concerne les employés qui veulent une demande de bon de sortie',
                    ),
                    SizedBox(height: 15),
                    Carte(
                      nom: "Mes Demandes De Bons de congé",
                      description:
                          'Cette demande concerne les employés qui veulent une demande de congé',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
