import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              "Stack Widget",
            ),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
              alignment: Alignment.center,
            ),
            Positioned(
              child: Text("Hello wordl"),
              top: 50,
              left: 50,
            )
          ],
        )));
  }
}
