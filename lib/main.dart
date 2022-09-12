import 'package:flutter/material.dart';
import 'package:hello_flutter/home.dart';
import 'package:hello_flutter/profile.dart';

// widgets start with capital letters and contain arguments
// arguments start with lowercase letters

void main() {
  runApp(const MyApp());
}

// StatelessWidget: widget never changes

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Hello Flutter Home'),
    );
  }
}

// StatefulWidget: widget can change when a user interacts with it

class MyHomePage extends StatefulWidget {
  // value provided by the parent
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // Fields in a Widget subclass are always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // variable declaration
  int _counter = 0;
  int currentPage = 0;

  List<Widget> pages = [
    const Home(),
    const Profile(),
  ];

  void _incrementCounter() {
    setState(() {
      // tells Flutter that something has changed in the State
      // which causes to rerun the build method below
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called

    // Scaffold: Implements the basic Material Design visual layout structure.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: pages[currentPage],

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB Pressed');
          _incrementCounter;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
