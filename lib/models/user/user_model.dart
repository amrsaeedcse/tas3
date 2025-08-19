class UserModel {
  final String name;
  final String pass;
  final String email;

  UserModel({required this.name, required this.pass, required this.email});

  static List<UserModel> users = [];
}
