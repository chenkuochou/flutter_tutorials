import 'package:flutter/material.dart';

class StateManagementSetState extends StatefulWidget {
  const StateManagementSetState({super.key});

  @override
  State<StateManagementSetState> createState() => _StateManagementSetStateState();
}

class _StateManagementSetStateState extends State<StateManagementSetState> {
  bool power = false;

  @override
  Widget build(BuildContext context) {
    return 
         Container(
          color: power ? Colors.white : Colors.black,
          child: Center(
            child: FilledButton(
              onPressed: () {
                setState(() {
                  power = !power;
                });
              },
              child: power ? const Text('Turn off') : const Text('Turn on'),
            ),
          ),
    );
  }
}
