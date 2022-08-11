class DemandeSortie {
  final String id;
  final String senderName;
  final DateTime dateDeb;
  final DateTime dateFin;
  final String etat;
  final String motif;
  DemandeSortie(
      {required this.id,
      required this.dateDeb,
      required this.dateFin,
      required this.motif,
      required this.etat,
      required this.senderName});
}
