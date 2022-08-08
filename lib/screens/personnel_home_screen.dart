import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PersonnelHomeScreen extends StatefulWidget {
  static const routeName = '/personnelHome';
  PersonnelHomeScreen({Key? key}) : super(key: key);

  @override
  State<PersonnelHomeScreen> createState() => _PersonnelHomeScreenState();
}

class _PersonnelHomeScreenState extends State<PersonnelHomeScreen> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;
  Utilisateur? personnel;
  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
  }

  Future<void> signOut() async {
    await Auth().signOut().then((value) {
      //go to login screen
    });
  }

  Future<Utilisateur?> readUser({required User user}) async {
    //Get single document by id
    final docUser =
        FirebaseFirestore.instance.collection('users').doc(user.uid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return Utilisateur.fromJson(snapshot.data()!);
    }
    return null;
  }

  Widget buildUser(Utilisateur user) => ListTile(
        leading: CircleAvatar(child: Text(user.email)),
        title: Text(user.nom),
        subtitle: Text(user.prenom),
      );

  Widget _userInfo(User user) {
    return FutureBuilder<Utilisateur?>(
      future: readUser(user: user),
      builder: ((context, snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong.${snapshot.error}");
        } else if (snapshot.hasData) {
          final user = snapshot.data;
          return user == null
              ? Center(child: Text('No user'))
              : Center(child: Text(user.email));
        } else {
          return Center(child: Text(user.toString()));
        }
      }),
    );
  }

  Widget _userUid() {
    return Text(user?.uid ?? 'User email');
  }

  Widget _title() {
    return const Text('Logged in');
  }

  Widget _signOutButton(BuildContext context) {
    return ElevatedButton(onPressed: signOut, child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _userInfo(user!),
              // _userUid(),
              _signOutButton(context),
            ],
          )),
    );
  }
}
