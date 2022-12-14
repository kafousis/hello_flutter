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
      final response = await RestClient().dio.call().get('posts/');
      return response.data.map<Post>((json) => Post.fromJson(json)).toList();
  }

  Future<Post> createPost(Post post) async {
    final response = await RestClient().dio.call().post('posts/', data: post.toJson());
    return Post.fromJson(response.data);
  }

  Future<Post> retrievePost(int id) async {
    final response = await RestClient().dio.call().get('posts/$id');
    return Post.fromJson(response.data);
  }

  Future<Post> updatePostWithPut(Post post) async {
    final response = await RestClient().dio.call().put('posts/${post.id}', data: post.toJson());
    return Post.fromJson(response.data);
  }

  Future<Post> updatePostWithPatch(int id, String title, String body) async {
    final response = await RestClient().dio.call().patch('posts/$id', data: {'title': title, 'body': body});
    return Post.fromJson(response.data);
  }

  Future<void> deletePost(int id) async{
    await RestClient().dio.call().delete('posts/$id');
  }
}