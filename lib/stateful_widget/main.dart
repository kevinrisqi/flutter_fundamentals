import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  void addNumber() {
    setState(() {
      number++;
    });
    print(number);
  }

  void minNumber() {
    setState(() {
      number--;
    });
    print(number);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: minNumber,
                child: const Icon(Icons.remove),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
              Text(number.toString()),
              ElevatedButton(
                onPressed: addNumber,
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
