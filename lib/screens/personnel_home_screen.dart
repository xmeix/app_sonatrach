// ignore_for_file: unnecessary_new

import 'package:app_sonatrach/addons/authentication.dart';
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
  final user = FirebaseAuth.instance.currentUser!;

  final uid = FirebaseAuth.instance.currentUser!.uid;
  //Doc ids
  List<String> docIDs = [];

  @override
  void initState() {
    //getDocId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            
            FutureBuilder<DocumentSnapshot>(
              future: users.doc(FirebaseAuth.instance.currentUser!.uid).get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return Text(data['nom']);
                  } else if (snapshot.hasError) {
                    return Text('2');
                  }
                }
                return Center(child: CircularProgressIndicator());
              },
            )
          ],
        ));
  }
}
