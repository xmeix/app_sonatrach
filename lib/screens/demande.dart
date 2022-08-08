// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class Demande extends StatelessWidget {
    static const routeName = '/demande';

  const Demande({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("La page de la demande"));
  }
}
