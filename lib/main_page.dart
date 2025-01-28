import 'dart:developer';

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
          title: Text("SingleChildScrollView vs ListView Widget"),
        ),
        body: SizedBox(
          width: 250,
          child: ListView(
            // scrollDirection: Axis.horizontal,
            children: createContainers(),
          ),
        ));
  }
}

List<Widget> createContainers() {
  return List.generate(30, (index) {
    return Builder(builder: (context) {
      log("container $index");
      return Container(
        margin: EdgeInsets.all(10),
        height: 150,
        width: 150,
        color: Colors.amberAccent,
        child: Center(
          child: Text(index.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50)),
        ),
      );
    });
  });
}
