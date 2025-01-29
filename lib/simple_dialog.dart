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
          title: Text("Simple Dialog"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog<bool>(
                context: context,
                builder: (context) => SimpleDialog(
                  title: Text("Simple Dialog"),
                  contentPadding: EdgeInsets.fromLTRB(10, 7, 10, 15),
                  children: [
                    Text("Are you sure you want to exit?"),
                    SimpleDialogOption(
                        child: Text("Ok"),
                        onPressed: () {
                          Navigator.pop(context, true);
                        }),
                    SimpleDialogOption(
                        child: Text("Cancel"),
                        onPressed: () {
                          Navigator.pop(context, false);
                        })
                  ],
                ),
              ).then((value) => log(value.toString()));
            },
            child: Text("Simple Dialog"),
          ),
        ));
  }
}
