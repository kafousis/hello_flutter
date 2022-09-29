import 'package:flutter/material.dart';
import 'package:hello_flutter/services/user_service.dart';

import '../models/user.dart';

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
                UserService().getUsers().then((value) => debugPrint(value.toString()));
              },
              child: const Text('GET /users'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('POST /users'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PUT /users/1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PATCH /users/1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('PATCH /users/1'),
            ),
          ],
        ),
      ),
    );
  }
}
