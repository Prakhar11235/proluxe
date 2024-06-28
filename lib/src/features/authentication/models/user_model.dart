class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String password;
  final String dob;

  const UserModel(
      {this.id,
      required this.email,
      required this.password,
      required this.fullName,
      required this.dob});

  Map<String, dynamic> toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      "Password": password,
      "DOB": dob,
    };
  }
}
