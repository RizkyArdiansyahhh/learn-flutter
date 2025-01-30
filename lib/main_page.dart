import 'package:flutter/material.dart';
import 'package:flutter_application_2/state_viewer.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StateViewer(),
      ),
    );
  }
}
