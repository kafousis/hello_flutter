import 'package:flutter/material.dart';

class RestApi extends StatelessWidget {
  const RestApi({Key? key}) : super(key: key);

  static const double spaceBetween = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'GET /users',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'POST /users',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'PUT /users/1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'PATCH /users/1',
                style: TextStyle(fontSize: 24),
              ),
            ),
            SizedBox(height: spaceBetween),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () {},
              child: const Text(
                'DELETE /users/1',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
