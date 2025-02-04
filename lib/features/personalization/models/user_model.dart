class UserModel {
  final String id;
  final String name;
  final String email;
  final String authToken;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.authToken,
  });

  /// Returns an empty user model.
  static UserModel empty() => UserModel(
    id: "",
    name: "",
    email: "",
    authToken: "",
  );

  /// Convert model to JSON.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'user_type': authToken,
    };
  }

  /// Create a UserModel from JSON.
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      email: json['email'] ?? "",
      authToken: json['authToken'] ?? "",
    );
  }
}
