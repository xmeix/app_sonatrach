enum Role { personnelSimple, responsableNiv1, responsableNiv2 }

class Utilisateur {
  String id;
  final String nom;
  final String prenom;
  // final DateTime dateNaissance;
  // final String lieuNaissance;
  // final DateTime dateRecrut;
  // final String numTel;
  // final String adresse;
  final String email;
  final String password;
  Role role;

  Utilisateur({
    this.id = '',
    required this.nom,
    required this.prenom,
    // required this.dateNaissance,
    // required this.lieuNaissance,
    // required this.dateRecrut,
    // required this.numTel,
    // required this.adresse,
    required this.email,
    required this.password,
    this.role = Role.personnelSimple,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'nom': nom,
        'prenom': prenom,
        'email': email,
        'password': password,
        'role': "personnelSimple",
      };

  static Utilisateur fromJson(Map<String, dynamic> json) => Utilisateur(
        id: json['id'],
        nom: json['nom'],
        prenom: json['prenom'],
        email: json['email'],
        password: json['password'],
        role: json['role'],
        // birthday: (json['birthday'] as Timestamp).toDate(),
      );
}
