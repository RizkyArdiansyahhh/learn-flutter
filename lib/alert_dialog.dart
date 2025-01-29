import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/navigator.dart';

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
          title: Text("Alert Dialog"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                        title: Text(
                          "Warning!",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        content: Text(
                          "Are you sure you want to exit?",
                          style: TextStyle(fontSize: 14),
                        ),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => NavigatorPage()));
                              },
                              child: Text("Ok")),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Text("Cancel")),
                        ]),
                  ).then((value) => log(value.toString()));
                },
                child: Text("Next Page"),
              ),
            ],
          ),
        ));
  }
}
