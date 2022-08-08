// ignore_for_file: prefer_const_constructors

import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/screens/personnel_home_screen.dart';
import 'package:app_sonatrach/widgets/background_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  String? errorMessage = '';

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget buildTextFormField(bool isPassword, TextEditingController controller) {
    return TextFormField(
        controller: controller,
        style: TextStyle(
          color: Color(0xff0d0d0d),
        ),
        obscureText: isPassword ? true : false,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          // icon: Icon(Icons.password),
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey, width: 0.5),
          ),
          prefixIcon: Icon(
            isPassword ? Icons.lock : Icons.email,
            color: Color(0xff0d0d0d),
            size: 20,
          ),
          suffixIcon: isPassword
              ? Icon(
                  Icons.visibility,
                  color: Color(0xff0d0d0d),
                  size: 20,
                )
              : null,
          hintText: isPassword ? "Mot de passe" : "Email",
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey[500],
          ),
          labelText: isPassword ? "Mot de passe" : "Email",
          labelStyle: TextStyle(
            fontSize: 15,
            color: Color(0xff0d0d0d),
            fontWeight: FontWeight.w600,
          ),
        ));
  }

  Widget buildLoginButton() {
    return ElevatedButton(
      onPressed: () {
        signInWithEmailAndPassword();
      },
      style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 240, 128, 0)),
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
      child: Text(
        "Se Connecter".toLowerCase(),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm? $errorMessage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background Image
          BackgroundImage(path: 'assets/images/Background.jpg'),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 60),
                  child: Image.asset(
                    'assets/images/logo2.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  "Connexion".toUpperCase(),
                  style: TextStyle(
                    color: Color(0xff0d0d0d),
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    letterSpacing: 5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildTextFormField(false, _controllerEmail),
                      buildTextFormField(true, _controllerPassword),
                      _errorMessage(),
                      Container(
                        alignment: Alignment.topRight,
                        child: buildLoginButton(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
