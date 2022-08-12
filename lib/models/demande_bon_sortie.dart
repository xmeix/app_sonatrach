class DemandeSortie {
  final String id;
  final String senderName;
  final String heureDeb;
  final String heureFin;
  final String etat;
  final String motif;
  DemandeSortie(
      {required this.id,
      required this.heureDeb,
      required this.heureFin,
      required this.motif,
      required this.etat,
      required this.senderName});
}
