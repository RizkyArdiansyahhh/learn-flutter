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
          title: Text("SingleChildScrollView vs ListView Widget"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.amberAccent,
                child: Center(
                  child: Text(
                    "Image Product",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Text(
                    "Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,Persela vs Bhayangkara berlangsung di Tuban Sport Center, Tuban, dalam matchday ketiga Grup Y,",
                    textAlign: TextAlign.justify),
              ))
            ],
          ),
        ));
  }
}
