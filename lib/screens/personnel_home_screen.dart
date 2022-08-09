// ignore_for_file: unnecessary_new

import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PersonnelHomeScreen extends StatefulWidget {
  static const routeName = '/personnelHome';

  const PersonnelHomeScreen({Key? key}) : super(key: key);

  @override
  State<PersonnelHomeScreen> createState() => _PersonnelHomeScreenState();
}

class _PersonnelHomeScreenState extends State<PersonnelHomeScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  String? uid;
  //Doc ids
  List<String> docIDs = [];

  @override
  void initState() {
    //getDocId();
    super.initState();
    user = FirebaseAuth.instance.currentUser!;
    uid = user!.uid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text(user!.email.toString()),
            Text(uid.toString()),
            FutureBuilder(
              future:
                  FirebaseFirestore.instance.collection('users').doc(uid).get(),
              builder: ((context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                return Text(snapshot.data!['nom'].toString());
              }),
            )
          ],
        ));
  }
}
