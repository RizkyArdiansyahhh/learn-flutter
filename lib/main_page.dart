import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          title: Center(child: Text("Icon Widget")),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
            child: Icon(
          MdiIcons.languageJavascript, // Menggunakan MdiIcons setelah import
          size: 150,
          color: Colors.amberAccent,
          shadows: [
            Shadow(
              offset: Offset(1, 0),
              blurRadius: 5,
              color: Colors.black,
            )
          ],
        )));
  }
}
