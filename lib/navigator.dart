import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/second_page.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Main Page")),
        backgroundColor: Colors.lime,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push<String>(context,
                    MaterialPageRoute(builder: (context) => const SecondPage()))
                .then((value) => log(value ?? "No Data From Second Page"));
          },
          child: Text("Next Page"),
        ),
      ),
    );
  }
}
