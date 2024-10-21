import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StateManagementSetState extends StatefulWidget {
  const StateManagementSetState({super.key});

  @override
  State<StateManagementSetState> createState() =>
      _StateManagementSetStateState();
}

class _StateManagementSetStateState extends State<StateManagementSetState> {
  bool power = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: power ? Colors.white : Colors.grey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Is the light on? $power"),
            const Gap(50),
            FilledButton(
              onPressed: () {
                setState(() {
                  power = !power;
                });
              },
              child: Text(power ? 'Turn off' : 'Turn on'),
            ),
          ],
        ),
      ),
    );
  }
}
