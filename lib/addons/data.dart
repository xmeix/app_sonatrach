// ignore_for_file: unnecessary_const

import 'package:app_sonatrach/models/demande_bon_sortie.dart';
import 'package:app_sonatrach/models/utilisateur.dart';
import 'package:intl/intl.dart';
import '../models/demande_bon_conge.dart';

List<DemandeSortie> listeDemSortie = [
  DemandeSortie(
      id: "0",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "en cours",
      senderName: "Boualouache lamia"),
  DemandeSortie(
      id: "1",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Mousli Amina"),
  DemandeSortie(
      id: "2",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "non validée",
      senderName: "Khadraoui fatiha"),
  DemandeSortie(
      id: "3",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Mousli dunia"),
  DemandeSortie(
      id: "4",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "non validée",
      senderName: "Sabah Izem"),
  DemandeSortie(
      id: "5",
      heureDeb: DateFormat.Hm().format(DateTime.now()),
      heureFin: DateFormat.Hm().format(DateTime.now()),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Serine Lesnami"),
];

List<DemandeConge> listeDemConge = [
  DemandeConge(
      id: "1",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "2",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "en cours",
      senderName: "Mousli feriel"),
  DemandeConge(
      id: "3",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "non validée",
      senderName: "Boualouache fatiha"),
  DemandeConge(
      id: "4",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache manel"),
  DemandeConge(
      id: "5",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "non validée",
      senderName: "aissani lamia"),
  DemandeConge(
      id: "6",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: " non validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "7",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "8",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "9",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "10",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "11",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "12",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "13",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "14",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "15",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "validée",
      senderName: "Boualouache lamia"),
  DemandeConge(
      id: "16",
      dateDeb: DateTime.now(),
      dateFin: DateTime.now(),
      motif:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
      etat: "en cours",
      senderName: "Boualouache lamia"),
];

const List<Utilisateur> listUser = const [
  Utilisateur(
    id: "15856",
    nom: "MOUSLI",
    prenom: "Feriel",
    email: "feriel@gmail.com",
    password: "feriel123",
    role: "personnelSimple",
  ),
  Utilisateur(
    id: "15858",
    nom: "MOUSLI",
    prenom: "Abdelmalk",
    email: "malek@gmail.com",
    password: "malekl123",
    role: "responsableNiv1",
  ),
  Utilisateur(
    id: "15825",
    nom: "IZEM",
    prenom: "Sabah",
    email: "sabah@gmail.com",
    password: "sabah123",
    role: "personnelSimple",
  ),
  Utilisateur(
    id: "15851",
    nom: "BOUALOUACHE",
    prenom: "Serine",
    email: "serine@gmail.com",
    password: "serine123",
    role: "responsableNiv2",
  ),
  Utilisateur(
    id: "158520",
    nom: "BOUALOUACHE",
    prenom: "Dunia",
    email: "dunia@gmail.com",
    password: "dunia123",
    role: "personnelSimple",
  ),
];
