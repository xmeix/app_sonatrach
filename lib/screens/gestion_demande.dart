// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/widgets/liste_demandes_gestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/navbar.dart';

class GestionDemande extends StatelessWidget {
  GestionDemande({Key? key}) : super(key: key);
  final List<DemandeSortie> _listeDemSortie = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        NavBar(title: 'Gestion Des Demandes'),
        ListeDemandesGestion(
          liste: _listeDemSortie,
        ),
      ]),
    );
  }
}
