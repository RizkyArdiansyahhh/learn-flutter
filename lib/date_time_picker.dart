import 'dart:developer';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  DateTime? selectedDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectedDate != null
                ? selectedDate.toString()
                : "this is Your Selected Date and Time"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => DatePickerDialog(
                          firstDate: DateTime.now().subtract(
                            Duration(days: 30),
                          ),
                          lastDate: DateTime.now(),
                        )).then((value) {
                  setState(() {
                    if (value != null) {
                      if (selectedDate == null) {
                        selectedDate = value;
                      } else {
                        selectedDate = selectedDate!.copyWith(
                          year: value.year,
                          day: value.day,
                          month: value.month,
                        );
                      }
                    }
                    log(value.toString());
                  });
                });
              },
              child: const Text("Pick a Date"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => TimePickerDialog(
                    initialTime: TimeOfDay.now(),
                  ),
                ).then((value) {
                  setState(() {
                    if (value != null) {
                      if (selectedDate != null) {
                        selectedDate = selectedDate!.copyWith(
                          hour: value.hour,
                          minute: value.minute,
                          // second: value.second,
                        );
                      } else {
                        selectedDate = DateTime.now().copyWith(
                          hour: value.hour,
                          minute: value.minute,
                          // second: value.second,
                        );
                      }
                    }
                    log(value.toString());
                  });
                });
              },
              child: const Text("Pick a Time"),
            ),
          ],
        ),
      ),
    );
  }
}
