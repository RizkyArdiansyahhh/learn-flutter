import 'dart:developer';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("PageView Widget")),
        backgroundColor: Colors.amberAccent,
      ),
      body: Stack(
        children: [
          PageView.builder(
              controller: pageController,
              onPageChanged: (index) {
                log("Move Page ${index + 1}");
              },
              itemCount: 3,
              itemBuilder: (context, index) => Center(
                    child: Text(
                      "Page ${index + 1}",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: double.infinity,
              color: Colors.amberAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if ((pageController.page ?? 0) >= 1) {
                        pageController.previousPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text("Prev"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if ((pageController.page ?? 0) != 0) {
                        pageController.animateToPage(0,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text("Home"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if ((pageController.page ?? 0) <= 1) {
                        pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      }
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
