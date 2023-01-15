import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gherkin Practice',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MultiplierScreen());
  }
}

class MultiplierScreen extends StatefulWidget {
  const MultiplierScreen({super.key});

  @override
  State<MultiplierScreen> createState() => _MultiplierScreenState();
}

class _MultiplierScreenState extends State<MultiplierScreen> {
  int multipleNum = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiplicator')),
      body: Center(
          child: Column(
        children: [
          Text(multipleNum.toString(), key: const Key('multipleNum')),
          const SizedBox(height: 24.0),
          ElevatedButton(
            key: const Key('multipleButton'),
            onPressed: () {
              setState(() {
                multipleNum = multipleNum * 2;
              });
            },
            child: const Text('Multiply by 2'),
          )
        ],
      )),
    );
  }
}
