enum TypeDemande{
  encours,
  valide,
  nonvalide
}

class DemandeConge {
  final double id;
  final String senderName;
  final DateTime dateDeb;
  final DateTime dateFin;
  final TypeDemande typeDemande;
  final String motif;
  DemandeConge(this.id, this.dateDeb, this.dateFin, this.motif, this.typeDemande, this.senderName);
}
