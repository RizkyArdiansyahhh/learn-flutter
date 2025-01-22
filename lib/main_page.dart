import 'dart:developer';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String textInfo = ""; // Menyimpan teks kalkulasi
  String operator = ""; // Operator yang digunakan (+, -, *, /)
  int result = 0; // Hasil kalkulasi
  int a = 0; // Angka pertama
  int b = 0; // Angka kedua

  // Fungsi untuk melakukan kalkulasi
  void calculate() {
    if (operator == "+") {
      result = a + b;
    } else if (operator == "-") {
      result = a - b;
    } else if (operator == "x") {
      result = a * b;
    } else if (operator == "/") {
      result = a ~/ b;
    }
    setState(() {
      textInfo = result.toString(); // Menampilkan hasil
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Kalkulator",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 290,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Center(
                  child: Text(
                    textInfo, // Menampilkan hasil kalkulasi
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ]),
            SizedBox(height: 20),
            // Tombol-tombol kalkulator
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildButton("7"),
              _buildButton("8"),
              _buildButton("9"),
              _buildButton("x", color: Colors.lightBlue),
            ]),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildButton("4"),
              _buildButton("5"),
              _buildButton("6"),
              _buildButton("-", color: Colors.lightBlue),
            ]),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildButton("1"),
              _buildButton("2"),
              _buildButton("3"),
              _buildButton("+", color: Colors.lightBlue),
            ]),
            SizedBox(height: 15),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _buildButton("0"),
              _buildButton(",", color: Colors.black),
              _buildButton("/", color: Colors.lightBlue),
              _buildButton("=", color: Colors.lightBlue),
            ]),
          ]),
        ));
  }

  // Fungsi untuk membangun tombol kalkulator
  Widget _buildButton(String label, {Color color = Colors.black}) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (label == "=") {
            calculate(); // Menghitung jika tombol "=" ditekan
          } else if (label == "+" ||
              label == "-" ||
              label == "x" ||
              label == "/") {
            operator = label; // Menyimpan operator
            a = int.parse(textInfo); // Menyimpan angka pertama
            textInfo = ""; // Mengosongkan layar untuk angka kedua
          } else {
            textInfo += label; // Menambahkan angka atau simbol ke layar
          }
        });
      },
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
