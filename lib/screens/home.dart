import 'package:flutter/material.dart';
import 'package:hello_flutter/screens/learn_flutter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // go to learn_flutter.dart
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutter();
              },
            ),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}
