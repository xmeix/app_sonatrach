// ignore_for_file: unnecessary_null_comparison, avoid_print

import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => FirebaseAuth.instance.currentUser();

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  bool isUserLoggedIn() {
    var user = FirebaseAuth.instance.currentUser();
    return user != null;
  }

  Future getUser(String uid) async {
    try {
      var userData =
          await FirebaseFirestore.instance.collection("users").doc(uid).get();
      return Utilisateur.fromJson(userData.data()!);
    } catch (e) {
      return e.toString();
    }
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
    required String id,
    required String nom,
    required String prenom,
    required String email,
    required String password,
  }) async {
    final docUser = FirebaseFirestore.instance.collection("users").doc(id);

    final user = Utilisateur(
      id: id,
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
      createUser(
          id: userCredential.user!.uid,
          nom: nom,
          prenom: prenom,
          email: email,
          password: password);
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
