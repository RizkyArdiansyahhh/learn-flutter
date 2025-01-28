import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textEditingController =
      TextEditingController(text: "initial value");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("TextField Widget")),
          backgroundColor: Colors.greenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: textEditingController,
                // obscureText: true,
                // obscuringCharacter: "!",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                cursorColor: Colors.red,
                // inputFormatters: [
                //   // Menggunakan TextInputFormatter untuk memaksa input menjadi kapital
                //   FilteringTextInputFormatter.allow(RegExp('[A-Za-z]')),
                //   TextInputFormatter.withFunction((oldValue, newValue) =>
                //       TextEditingValue(text: newValue.text.toUpperCase())),
                // ],
                onChanged: (value) => setState(() {}),
              ),
              SizedBox(
                height: 20,
              ),
              Text(textEditingController.text,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
            ],
          ),
        ));
  }
}
