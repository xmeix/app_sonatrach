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
  final String uid = FirebaseAuth.instance.currentUser!.uid;

  //Doc ids
  List<String> docIDs = [];

  @override
  void initState() {
    //getDocId();
    super.initState();
  }

  Future<void> signOut() async {
    await Auth().signOut().then((value) {
      //go to login screen
    });
  }

  Widget _signOutButton() {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(uid),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(
              future:
                  FirebaseFirestore.instance.collection('users').doc(uid).get(),
              builder: ((context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.hasData && !snapshot.data!.exists) {
                  return Text("Document does not exist");
                }
                return Text(snapshot.data!['nom'].toString());
              }),
            ),
            _signOutButton(),
          ],
        ),
      ),
    );
  }
}
