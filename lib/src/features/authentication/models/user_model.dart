class UserModel {
  final String? id;
  final String fullName;
  final String email;
  //final String phoneNo;
  final String password;
  final String dob;

  const UserModel(
      {this.id,
      required this.email,
      //required this.phoneNo,
      required this.password,
      required this.fullName,
      required this.dob});

  Map<String, dynamic> toJson() {
    return {
      "FullName": fullName,
      "Email": email,
      //"Phone": phoneNo,
      "Password": password,
      "DOB": dob,
    };
  }
}
