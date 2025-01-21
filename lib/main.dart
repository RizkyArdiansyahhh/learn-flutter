import 'package:flutter/material.dart';

// Method main
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("Aplikasi Pertama")),
            body: Center(child: Text("Hello world"))));
  }
}
