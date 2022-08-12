import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:app_sonatrach/widgets/carte.dart';
import 'package:app_sonatrach/widgets/navbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const NavBar(title: 'Acceuil Responsable Niveau 2'),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 60,
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Bonjour!,',
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1.25,
                        ),
                      ),
                      Text(
                        "${userTest?.nom} ${userTest?.prenom}".toLowerCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "MouseMemoirs-Regular",
                          fontSize: 20,
                          letterSpacing: 1.25,
                        ),
                      ),
                    ],
                  ),
                ),
                const Carte(
                  nom: "Les demandes de bons de sortie des employés",
                  description:
                      'Cette demande concerne les employés qui veulent une demande de bon de sortie',
                  gestion: true,
                  listeDem: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Carte(
                  nom: "Les demandes de congés des employés",
                  description:
                      'Cette demande concerne les employés qui veulent une demande de congé',
                  gestion: true,
                  listeDem: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
