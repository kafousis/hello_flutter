import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestApi extends StatelessWidget {
  const RestApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('GET /posts')),
          ElevatedButton(onPressed: () {}, child: const Text('POST /posts')),
          ElevatedButton(onPressed: () {}, child: const Text('PUT /posts/1')),
          ElevatedButton(onPressed: () {}, child: const Text('PATCH /posts/1')),
          ElevatedButton(onPressed: () {}, child: const Text('DELETE /posts/1')),
        ],
      ),
    );
    return const Scaffold();
  }
}
