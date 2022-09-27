import 'package:flutter/material.dart';

class RestApi extends StatelessWidget {
  const RestApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      width: double.infinity,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('GET /posts'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('POST /posts'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PUT /posts/1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PATCH /posts/1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PATCH /posts/1'),
            ),
          ],
        ),
      ),
    );
  }
}
