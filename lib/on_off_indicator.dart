import 'package:flutter/material.dart';

class OnOffIndicator extends StatelessWidget {
  final bool isOn;
  final Color color;

  const OnOffIndicator({super.key, this.isOn = false, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isOn ? color : Colors.grey.shade800,
        ));
  }
}
