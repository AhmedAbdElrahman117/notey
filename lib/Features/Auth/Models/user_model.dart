class UserModel {
  final int? id;
  String? uid;
  final String? userName;
  final String email;
  final String? password;
  final DateTime? createdAt;

  UserModel({
    this.userName,
    required this.email,
    this.password,
    this.createdAt,
    this.id,
    this.uid,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int?,
      uid: map['uid'] as String?,
      email: map['email'] as String,
      password: map['password'] as String?,
      userName: map['name'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': userName,
      'email': email,
      'password': password,
      'uid': uid,
      'created_at':
          createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
    };
  }
}
