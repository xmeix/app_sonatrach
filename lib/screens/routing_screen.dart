// // ignore_for_file: prefer_const_constructors

// import 'package:app_sonatrach/addons/authentication.dart';
// import 'package:app_sonatrach/models/utilisateur.dart';
// import 'package:app_sonatrach/screens/login_screen.dart';
// import 'package:app_sonatrach/screens/test.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/material.dart';

// class RoutingScreen extends StatefulWidget {
//   const RoutingScreen({Key? key}) : super(key: key);

//   @override
//   State<RoutingScreen> createState() => _RoutingScreenState();
// }

// class _RoutingScreenState extends State<RoutingScreen> {
//   bool loggedIn = Auth().isUserLoggedIn();

//   late final User user;

//   Utilisateur? userTest;

//   @override
//   void initState() {
//     super.initState();
//     user = FirebaseAuth.instance.currentUser!;
//     getUser();
//   }

//   Future getUser() async {
//     await Auth().getUser(user.uid).then((snap) => setState(() {
//           userTest = snap;
//         }));
//   }

//   Stream<Utilisateur> getRole() async* {
//     await Auth().getUser(FirebaseAuth.instance.currentUser!.uid);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return user != null
//         ? StreamBuilder<Utilisateur>(
//             stream: getRole(),
//             builder: ((context, snapshot) {
//               if (snapshot.hasData) {
//                 String role = snapshot.data!.role;

//                 return Scaffold(appBar: AppBar(title: Text(role)));
//               } else {
//                 return LoginScreen();
//               }
//             }),
//           )
//         : Center(child: CircularProgressIndicator());
//   }
// }
