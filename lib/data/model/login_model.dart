import 'dart:convert';

class LoginModel {
  int? id;
  String? username;
  String? password;
  String? token;
  LoginModel({
    this.id,
    this.username,
    this.password,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'password': password,
      'token': token,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      id: map['id'],
      username: map['username'],
      password: map['password'],
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModel.fromJson(String source) =>
      LoginModel.fromMap(json.decode(source));
}
