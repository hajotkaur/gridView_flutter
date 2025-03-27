import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Text('$Text')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(hintText: 'Enter your text'),
            onChanged: (newText) {
              setState(() => text = newText);
            },
          ),
          ElevatedButton(onPressed: null, child: Text('Submit')),
        ],
      ),
    );
  }
}
