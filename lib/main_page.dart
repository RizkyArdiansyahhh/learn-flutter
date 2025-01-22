import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Widget"),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            width: 200,
            child: Text(
                "Hello... Nama saya Rizky Ardiansyah Tinggal Di Pekanbaru, dan sekarang sedang berkualiah di universitas riau.",
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  // backgroundColor: Colors.green[400],
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Colors.red,
                )),
          )
        ])));
  }
}
