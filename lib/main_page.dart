import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Box Decoration"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 200,
                  width: 200,
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.circular(100),
                    //     topRight: Radius.circular(100)),
                    // gradient: LinearGradient(
                    //     colors: [Colors.yellow, Colors.green],
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 15,
                        spreadRadius: 2,
                        color: Colors.black54,
                        offset: Offset(1, 1),
                      )
                    ],
                    border: Border.all(color: Colors.black, width: 2),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/originals/0a/8a/59/0a8a5939bfd3bec705b3a4c52a07cb1a.jpg"),
                        fit: BoxFit.cover),
                    shape: BoxShape.circle,
                  )),
              const Text("User123"),
            ],
          ),
        ));
  }
}
