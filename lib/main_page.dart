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
          title: Text(
            "Align Wodget",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Align(
          alignment: Alignment(-0.75, -1),
          child: SizedBox(
              width: 300,
              child: Text(
                "Halo perkenalkan nama saya rizky ardiansyah, saya mempunyai hobi yaitu melukis. -RizkyQuote",
                textAlign: TextAlign.justify,
              )),
        ));
  }
}
