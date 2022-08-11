enum TypeDemande { encours, valide, nonvalide }

class DemandeConge {
  final String id;
  final String senderName;
  final DateTime dateDeb;
  final DateTime dateFin;
  // final TypeDemande typeDemande;
  final String typeDemande;
  final String motif;

  DemandeConge({
    required this.id,
    required this.dateDeb,
    required this.dateFin,
    required this.motif,
    required this.typeDemande,
    required this.senderName,
  });
}
