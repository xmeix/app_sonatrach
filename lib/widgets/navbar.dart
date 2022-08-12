import 'package:app_sonatrach/addons/authentication.dart';
import 'package:app_sonatrach/screens/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NavBar extends StatelessWidget {
  final String title;
  const NavBar({Key? key, required this.title}) : super(key: key);

  Future<void> signOut() async {
    await Auth().signOut().then((value) {});
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black, //change your color here
      ),
      centerTitle: true,
      title: Padding(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 226, 223, 223),
      elevation: 5,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              ///Navigation
              signOut(); 
            },
          ),
        )
      ],
    );
  }
}
