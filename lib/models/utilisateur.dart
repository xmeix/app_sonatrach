class Utilisateur {
  final int id;
  final String nom;
  final String prenom;
  final DateTime dateNaissance;
  final String lieuNaissance;
  final DateTime dateRecrut;
  final String numTel;
  final String adresse;
  final String email;
  final String password;

  Utilisateur(
    this.id,
    this.nom,
    this.prenom,
    this.dateNaissance,
    this.lieuNaissance,
    this.dateRecrut,
    this.numTel,
    this.adresse,
    this.email,
    this.password,
  );
}
