// ignore_for_file: unused_element

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:app_sonatrach/addons/authentication.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';

  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String? errorMessage = '';

  final TextEditingController _controllerEmail = TextEditingController();

  final TextEditingController _controllerPassword = TextEditingController();

  final TextEditingController _controllerNom = TextEditingController();

  final TextEditingController _controllerPrenom = TextEditingController();

  Widget _title() {
    return const Text("FireBase Auth");
  }

  Widget _entryField(String title, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage as String);
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        nom: _controllerNom.text,
        prenom: _controllerPrenom.text,
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      errorMessage = e.message;
    }
  }

  Widget _submitButton() {
    return ElevatedButton(
        onPressed: createUserWithEmailAndPassword, child: Text("Register "));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign up'),
        ),
        body: Column(
          children: [
            _entryField("nom", _controllerNom),
            _entryField("prenom", _controllerPrenom),
            _entryField("email", _controllerEmail),
            _entryField("password", _controllerPassword),
            _submitButton(),
          ],
        ));
  }
}
