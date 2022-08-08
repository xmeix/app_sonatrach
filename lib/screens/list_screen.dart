// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/widgets/List_title.dart';
import 'package:app_sonatrach/widgets/liste_demandes.dart';
import 'package:app_sonatrach/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
    static const routeName = '/list';

  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<DemandeSortie> _listeDemSortie = [
    DemandeSortie(
        0,
        DateTime.now(),
        DateTime.now(),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
        "en cours de traitement",
        "Lamia Boualouache"),
    DemandeSortie(
        1,
        DateTime.now(),
        DateTime.now(),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
        "validée",
        "Lamia Boualouache"),
    DemandeSortie(
        2,
        DateTime.now(),
        DateTime.now(),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
        "validée",
        "Lamia Boualouache"),
    DemandeSortie(
        3,
        DateTime.now(),
        DateTime.now(),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
        "validée",
        "Lamia Boualouache"),
    DemandeSortie(
        4,
        DateTime.now(),
        DateTime.now(),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
        "non validée",
        "Lamia Boualouache"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTitle(title: "Demandes Bons de Sortie"),
          ListeDemandes(
            liste: _listeDemSortie,
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
