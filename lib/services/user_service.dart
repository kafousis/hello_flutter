import 'package:hello_flutter/models/user.dart';
import 'package:hello_flutter/rest/rest_client.dart';

class UserService {
  static UserService? _instance;

  factory UserService() => _instance ??= UserService._();

  UserService._();

  Future<List<User>> getUsers() async {
    final response = await RestClient().dio.call().get("users/");
    return response.data.map<User>((json) => User.fromJson(json)).toList();
  }
}