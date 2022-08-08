import 'package:app_sonatrach/models/utilisateur.dart';
 import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
 
class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  //servir a ecouter a chaque fois qu il connecte ou dec
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();


  Future readUser(User user) async {
    //Get single document by id
    if (user != null) {
      final docUser =
          FirebaseFirestore.instance.collection('users').doc(user.uid);
      final snapshot = await docUser.get();

      if (snapshot.exists) {
        return Utilisateur.fromJson(snapshot.data()!);
      }
    } else {
      return null;
    }
  }

  Future signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = result.user;
      return readUser(user!);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      return null;
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
