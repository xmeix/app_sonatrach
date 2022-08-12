// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/screens/demande_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ListeDemandes extends StatelessWidget {
  final List liste;
  final bool isItList;
  const ListeDemandes({Key? key, required this.liste, required this.isItList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DemandeScreen(),
                  settings: RouteSettings(arguments: [isItList, liste[index]]),
                ),
              );
            },
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
                                        isItList
                                            ? 'De ${liste[index].heureDeb}h a  ${liste[index].heureFin}h'
                                            : 'De ${DateFormat.Hm().format(liste[index].dateDeb)}h a  ${DateFormat.Hm().format(liste[index].dateFin)}h',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                        )),
                                  ]),
                              //State
                              Text(
                                liste[index].etat.toUpperCase(),
                                style: TextStyle(
                                  color: liste[index].etat.compareTo(
                                              "en cours de traitement") ==
                                          0
                                      ? Color.fromARGB(255, 240, 128, 0)
                                      : (liste[index]
                                                  .etat
                                                  .compareTo("validée") ==
                                              0
                                          ? Color(0xff004643)
                                          : Color(0xffF25F4C)),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ])
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
