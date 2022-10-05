import 'package:hello_flutter/models/user.dart';
import 'package:hello_flutter/rest/rest_client.dart';

class UserService {

  // private constructor
  UserService._();

  // the one and only instance returned
  static UserService? _instance;

  // return _instance if not null, else call private constructor to create instance
  factory UserService() => _instance ??= UserService._();

  Future<List<User>> getUsers() async {
    final response = await RestClient().dio.call().get("posts/");
    return response.data.map<User>((json) => User.fromJson(json)).toList();
  }
}