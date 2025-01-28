import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController textEditingController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("TextField Widget"),
        ),
        backgroundColor: Colors.grey.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: textEditingController,
              onChanged: (value) => setState(() {}),
              // enabled: true,
              style: TextStyle(
                fontSize: 16,
              ),
              // autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                // PlaceHolder input
                hintText: "Enter Your Name",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade500,
                ),

                // Label Input
                labelText: "Username",
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),

                // Counter Input
                counterText: textEditingController.text.length >= 50
                    ? "50"
                    : "${50 - textEditingController.text.length}",
                counterStyle: TextStyle(
                  color: textEditingController.text.length >= 40
                      ? Colors.red
                      : Colors.black,
                ),

                // Error Input
                errorText: textEditingController.text.length >= 50
                    ? "Max Username 50"
                    : null,

                // Icon Input
                icon: Icon(
                  MdiIcons.faceWomanProfile,
                  color: Colors.blueGrey,
                ),
                prefixIcon: Icon(
                  MdiIcons.faceManProfile,
                ),
                suffixIcon: Icon(
                  MdiIcons.passport,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 40,
            ),
            Text(textEditingController.text),
          ],
        ),
      ),
    );
  }
}
