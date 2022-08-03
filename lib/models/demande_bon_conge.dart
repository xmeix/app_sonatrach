class DemandeConge {
  final double id;
  final String senderName;
  final DateTime dateDeb;
  final DateTime dateFin;
  final String typeDemande;
  final String motif;
  DemandeConge(this.id, this.dateDeb, this.dateFin, this.motif, this.typeDemande, this.senderName);
}
