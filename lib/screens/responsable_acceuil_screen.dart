import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResponsableN1AcceuilScreen extends StatefulWidget {
  const ResponsableN1AcceuilScreen({Key? key}) : super(key: key);
  static String routeName = "/res1";

  @override
  State<ResponsableN1AcceuilScreen> createState() =>
      _ResponsableN1AcceuilScreenState();
}

class _ResponsableN1AcceuilScreenState
    extends State<ResponsableN1AcceuilScreen> {
  Future<void> signOut() async {
    await Auth().signOut().then((value) {});
  }

  Widget _signOutButton() {
    return ElevatedButton(
        onPressed: () {
          signOut();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false);
        },
        child: const Text('Sign Out'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsable 1"),
        ),
        body: _signOutButton());
  }
}
