import 'package:flutter/material.dart';
import 'package:flutter_application_2/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // MainPage mainPage = MainPage();
    // // TODO: implement build
    // MaterialApp materialApp = MaterialApp(
    //   home: mainPage,
    // );

    return MaterialApp(
      home: const MainPage(),
    );
  }
}
