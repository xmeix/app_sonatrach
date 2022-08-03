// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: GNav(
          tabBackgroundColor: Colors.orange.shade700,
          activeColor: Colors.white,
          color: Colors.orange.shade700,
          backgroundColor: Colors.white,
          gap: 10,
          padding: EdgeInsets.all(16),
          tabs: [
            GButton(
              icon: FontAwesomeIcons.caretLeft,
              text: "Retour",
            ),
            GButton(
              icon: FontAwesomeIcons.house,
              text: "Acceuil",
            ),
            GButton(
              icon: Icons.add,
              text: "Ajouter Demande",
            ),
          ],
        ),
      ),
    );
  }
}
