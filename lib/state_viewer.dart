import 'package:flutter/material.dart';
import 'package:flutter_application_2/on_off_indicator.dart';
import 'package:flutter_application_2/states.dart';

class StateViewer extends StatefulWidget {
  const StateViewer({super.key});

  @override
  State<StateViewer> createState() => _StateViewerState();
}

class _StateViewerState extends State<StateViewer> {
  States _state = States.safe;
  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: GestureDetector(
        onTap: () {
          setState(() => _state = States.values[(_state.index + 1) % 3]);
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
          ),
          child: Row(
            children: [
              OnOffIndicator(
                color: Colors.green,
                isOn: _state == States.safe,
              ),
              SizedBox(width: 5),
              OnOffIndicator(
                color: Colors.amberAccent,
                isOn: _state == States.warning,
              ),
              SizedBox(width: 5),
              OnOffIndicator(
                color: Colors.redAccent,
                isOn: _state == States.danger,
              )
            ],
          ),
        ),
      ),
    );
  }
}
