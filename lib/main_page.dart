import 'package:flutter/material.dart';
import 'text_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(_counter >= 20 ? 'fortnite among us' : widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'i eate tha spageg',
            ),
            const SizedBox(height: 20),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: _incrementCounter,
              label: const Text('more among us'),
            ),
            const SizedBox(height: 20),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: _decrementCounter,
              label: const Text('less among us'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        heroTag: null,
        onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TextPage())
            );
        },
        child: const Icon(Icons.arrow_right),
      ),
    );
  }
}
