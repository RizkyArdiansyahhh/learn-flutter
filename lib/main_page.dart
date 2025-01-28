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
          title: Center(
            child: Text(
              "Wrap Widget",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Container(
          color: Colors.yellow,
          width: double.infinity,
          height: double.infinity,
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 20,
            verticalDirection: VerticalDirection.up,
            children: List.generate(
                8,
                (index) => Container(
                      width: 150,
                      height: index % 2 == 0 ? 100 : 150,
                      color: index % 2 == 0 ? Colors.red : Colors.cyanAccent,
                      child: Center(
                        child: Text(index.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ),
                    )),
          ),
        ));
  }
}
