// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DemandeScreen extends StatelessWidget {
  const DemandeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final demande = ModalRoute.of(context)!.settings.arguments as DemandeSortie;
    return Scaffold(
      body: Column(
        children: [
          NavBar(title: "Demande de bon de sortie"),
          Container(
            padding: EdgeInsets.all(30),
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                height: 420,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Id : ${demande.id} ',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff0d0d0d),
                            letterSpacing: 0.5,
                          ),
                        ),
                        Text(
                          demande.etat,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                            color: demande.etat
                                        .compareTo("en cours de traitement") ==
                                    0
                                ? Color.fromARGB(255, 240, 128, 0)
                                : (demande.etat.compareTo("validée") == 0
                                    ? Color(0xff004643)
                                    : Color(0xffF25F4C)),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Expéditeur :  ${demande.senderName} ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0d0d0d),
                        letterSpacing: 0.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Text(
                      'Motif :  ${demande.motif}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff0d0d0d),
                        letterSpacing: 0.5,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Color(0xff0d0d0d),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Date Debut : ${DateFormat.yMd().format(demande.dateDeb)}'
                                  .toLowerCase(),
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff0d0d0d),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Color(0xff0d0d0d),
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Date fin :  ${DateFormat.yMd().format(demande.dateFin)}'
                                  .toLowerCase(),
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: Color(0xff0d0d0d),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ],
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
