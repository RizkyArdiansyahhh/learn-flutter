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
            child: Text(
              "Padding Widget",
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        body: const Row(
          children: [
            Padding(
              child: Text("Halo1"),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            ),
            Padding(
              child: Text("Halo1"),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            ),
            Padding(
              child: Text("Halo1"),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            ),
            Padding(
              child: Text("Halo1"),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            ),
            Padding(
              child: Text("Halo1"),
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            ),
          ],
        ));
  }
}
