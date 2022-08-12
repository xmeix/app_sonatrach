// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListeDemandesGestion extends StatelessWidget {
  final List<DemandeSortie> liste;

  const ListeDemandesGestion({Key? key, required this.liste}) : super(key: key);

  Widget buildTextButton(String title) {
    return Row(
      children: [
        TextButton(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: title.compareTo("Accepter") == 0
                  ? Color(0xff67c2bf)
                  : Color(0xffb54c62),
            ),
          ),
          style: ButtonStyle(
            mouseCursor: MaterialStateProperty.all(MouseCursor.uncontrolled),
          ),
          onPressed: () {},
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //info
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(liste[index].senderName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(
                                      'De ${liste[index].heureDeb}h a  ${liste[index].heureFin}h',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                      )),
                                ]),
                            //State
                            Row(children: [
                              buildTextButton("Refuser"),
                              buildTextButton("Accepter")
                            ])
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          );
        },
        itemCount: liste.length,
      ),
    );
  }
}
