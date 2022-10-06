import 'package:flutter/material.dart';
import 'package:hello_flutter/services/post_service.dart';

import '../models/post.dart';

class RestApi extends StatelessWidget {
  const RestApi({Key? key}) : super(key: key);

  static const double spaceBetween = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Future<List<Post>> future = PostService().getPosts();
                future
                    .then((value) => debugPrint(value.toString()))
                    .catchError((e) {
                  debugPrint("Error: $e");
                });
              },
              child: const Text(
                'GET /posts',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Post post = Post(101, 1, 'My awesome post', 'This is another awesome post');
                Future<Post> future = PostService().createPost(post);
                future
                    .then((value) => debugPrint(value.toString()))
                    .catchError((e) {
                  debugPrint("Error: $e");
                });
              },
              child: const Text(
                'POST /posts',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Future<Post> future = PostService().retrievePost(1);
                future
                    .then((value) => debugPrint(value.toString()))
                    .catchError((e) {
                  debugPrint("Error: $e");
                });
              },
              child: const Text(
                'GET /posts/1',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Post post = Post(1, 50, 'My updated post', 'This is an updated post');
                Future<Post> future = PostService().updatePostWithPut(post);
                future
                    .then((value) => debugPrint(value.toString()))
                    .catchError((e) {
                  debugPrint("Error: $e");
                });
              },
              child: const Text(
                'PUT /posts/1',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {
                Future<Post> future = PostService().updatePostWithPatch(1, "My new title", "My new body");
                future
                    .then((value) => debugPrint(value.toString()))
                    .catchError((e) {
                  debugPrint("Error: $e");
                });
              },
              child: const Text(
                'PATCH /posts/1',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'DELETE /posts/1',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
