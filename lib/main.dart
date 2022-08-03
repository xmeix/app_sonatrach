// ignore_for_file: prefer_const_constructors

import 'package:app_sonatrach/pages/Home.dart';
import 'package:app_sonatrach/pages/list_page.dart';
import 'package:app_sonatrach/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SonatrachApp());
}

class SonatrachApp extends StatelessWidget {
  const SonatrachApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sonatrach dz",
      initialRoute: "/login",
      routes: {
        '/': (context) => Home(),
        '/login': (context) => LoginPage(),
        '/list': (context) => ListPage(),
        '/demande': (context) => ListPage(),
      },
    );
  }
}
