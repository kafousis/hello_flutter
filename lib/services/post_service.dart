import 'package:hello_flutter/models/post.dart';
import 'package:hello_flutter/rest/rest_client.dart';

class PostService {

  // private constructor
  PostService._();

  // the one and only instance returned
  static PostService? _instance;

  // return _instance if not null, else call private constructor to create instance
  factory PostService() => _instance ??= PostService._();

  Future<List<Post>> getPosts() async {
      final response = await RestClient().dio.call().get("posts/");
      return response.data.map<Post>((json) => Post.fromJson(json)).toList();
  }

  Future<Post> createPost(Post post) async {
    final response = await RestClient().dio.call().post("posts/", data: post.toJson());
    return Post.fromJson(response.data);
  }
}