import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SizedBox Widget"),
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              width: 200,
              child: Text("Halo Nama Saya Rizky Ardiansyah Dari Pekanbaru"),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Saya Berumur 20 Tahun"),
          ]),
        ));
  }
}
