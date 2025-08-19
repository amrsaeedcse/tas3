class UserModel {
  final String name;
  // final String pass;
  final String email;

  final String? image;

  UserModel({required this.image, required this.name, required this.email});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      image: json['image'],
    );
  }
  Map<String, dynamic> toJson() {
    return {"name": name, "email": email, "image": image};
  }

  static List<UserModel> users = [];
}
