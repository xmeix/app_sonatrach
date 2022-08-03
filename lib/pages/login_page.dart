// ignore_for_file: prefer_const_constructors

import 'package:app_sonatrach/widgets/background_image.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                      TextFormField(
                          style: TextStyle(
                            color: Color(0xff0d0d0d),
                          ),
                          obscureText: false,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            // icon: Icon(Icons.password),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff0d0d0d),
                              size: 20,
                            ),
                            hintText: "abc@gmail.com",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                            labelText: "E-mail",
                            alignLabelWithHint: false,
                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff0d0d0d),
                            ),
                          )),
                      TextFormField(
                          style: TextStyle(
                            color: Color(0xff0d0d0d),
                          ),
                          obscureText: true,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            // icon: Icon(Icons.password),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color(0xff0d0d0d),
                              size: 20,
                            ),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Color(0xff0d0d0d),
                              size: 20,
                            ),
                            hintText: "Mot de passe",
                            hintStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[500],
                            ),
                            labelText: "Mot de passe",
                            labelStyle: TextStyle(
                              fontSize: 15,
                              color: Color(0xff0d0d0d),
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(255, 240, 128, 0)),
                                padding: MaterialStateProperty.all(
                                    EdgeInsets.all(15)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                            child: Text(
                              "Se Connecter".toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ))
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
