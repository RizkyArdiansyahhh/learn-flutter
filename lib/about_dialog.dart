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
        title: Center(child: Text("About Dialog")),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AboutDialog(
                      applicationName: "Flutter Application 2",
                      applicationVersion: "1.0.0",
                      applicationLegalese: "Flutter Application 2",
                      applicationIcon: Icon(Icons.info),
                    ));
          },
          child: Text("About"),
        ),
      ),
    );
  }
}
