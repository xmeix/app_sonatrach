// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  //servir a ecouter a chaque fois qu il connecte ou dec
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<Utilisateur?> readUser() async {
    //Get single document by id
    final user = _firebaseAuth.currentUser;
    final docUser =
        FirebaseFirestore.instance.collection('users').doc(user?.uid);
    final snapshot = await docUser.get();

    if (snapshot.exists) {
      return Utilisateur.fromJson(snapshot);
    }
    return null;
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> createUser({
    required String nom,
    required String prenom,
    required String email,
    required String password,
  }) async {
    final docUser = FirebaseFirestore.instance.collection("users").doc();

    final user = Utilisateur(
      id: docUser.id,
      nom: nom,
      prenom: prenom,
      email: email,
      password: password,
    );
    final json = user.toJson();
    await docUser.set(json);
  }

  Future<void> createUserWithEmailAndPassword({
    required String nom,
    required String prenom,
    required String email,
    required String password,
  }) async {
    UserCredential userCredential =
        await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (userCredential.user != null) {
      //store in firestore
      createUser(nom: nom, prenom: prenom, email: email, password: password);
    }
  }

  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }
}
