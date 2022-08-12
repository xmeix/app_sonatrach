// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/widgets/List_title.dart';
import 'package:app_sonatrach/widgets/liste_demandes.dart';
import 'package:app_sonatrach/widgets/bottom_navbar.dart';
import 'package:app_sonatrach/widgets/navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../addons/data.dart';

class ListScreen extends StatefulWidget {
  static const routeName = '/list';

  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    final listeDem = ModalRoute.of(context)!.settings.arguments as bool;

    return Scaffold(
      body: Column(
        children: [
          NavBar(title: "Mes Bons De Sortie"),
          ListeDemandes(
            liste: listeDem ? listeDemSortie : listeDemConge,
            isItList: listeDem,
          ),
        ],
      ),
    );
  }
}
