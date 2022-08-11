// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/widgets/List_title.dart';
import 'package:app_sonatrach/widgets/liste_demandes.dart';
import 'package:app_sonatrach/widgets/bottom_navbar.dart';
import 'package:app_sonatrach/widgets/navbar.dart';
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
        id: "0",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "en cours de traitement",
        senderName: "Boualouache lamia"),
    DemandeSortie(
        id: "1",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "validée",
        senderName: "Mousli Amina"),
    DemandeSortie(
        id: "2",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "non validée",
        senderName: "Khadraoui fatiha"),
    DemandeSortie(
        id: "3",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "validée",
        senderName: "Mousli dunia"),
    DemandeSortie(
        id: "4",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "non validée",
        senderName: "Sabah Izem"),
    DemandeSortie(
        id: "5",
        dateDeb: DateTime.now(),
        dateFin: DateTime.now(),
        motif:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
        etat: "validée",
        senderName: "Serine Lesnami"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NavBar(title: "Mes Bons De Sortie"),
          ListeDemandes(
            liste: _listeDemSortie,
          )
        ],
      ),
    );
  }
}
