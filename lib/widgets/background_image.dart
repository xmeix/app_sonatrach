import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String path;

  const BackgroundImage({Key? key, required this.path}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
