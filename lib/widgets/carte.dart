// ignore_for_file: prefer_const_constructors

import 'package:app_sonatrach/screens/gestion_demande.dart';
import 'package:app_sonatrach/screens/list_screen.dart';
import 'package:flutter/material.dart';

class Carte extends StatelessWidget {
  final String nom;
  final String description;
  final bool gestion;
  final bool listeDem;
  const Carte({
    Key? key,
    required this.nom,
    required this.description,
    required this.gestion,
    required this.listeDem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (gestion) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => GestionDemande()));
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ListScreen(),
              settings: RouteSettings(
                arguments: listeDem,
              ),
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 190,
        child: Card(
          elevation: 5,
          shadowColor: Colors.grey[500],
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nom,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 0.75,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Color.fromARGB(123, 0, 0, 0),
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
