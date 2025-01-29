import 'package:flutter/material.dart';
import 'package:flutter_application_2/Country.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Country> countryList = [
    Country(name: "Indonesia"),
    Country(name: "Malaysia"),
    Country(name: "Singapore"),
    Country(name: "Thailand"),
    Country(name: "Kamboja"),
  ];

  Country? selectedCountry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown Widget"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
            child: DropdownButton<Country>(
          items: countryList
              .map((country) => DropdownMenuItem<Country>(
                    value: country,
                    child: Text(country.name),
                  ))
              .toList(),
          value: selectedCountry,
          onChanged: (value) => setState(() => selectedCountry = value),
          isExpanded: true,
          hint: Text("Select Country"),
        )),
      ),
    );
  }
}
