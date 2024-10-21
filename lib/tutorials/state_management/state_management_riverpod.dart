import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class StateManagementRiverpod extends ConsumerWidget {
  const StateManagementRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool power = ref.watch(powerProvider);

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
                ref.read(powerProvider.notifier).toggle();
              },
              child: Text(power ? 'Turn off' : 'Turn on'),
            ),
          ],
        ),
      ),
    );
  }
}

final powerProvider = NotifierProvider<PowerNotifier, bool>(PowerNotifier.new);

class PowerNotifier extends Notifier<bool> {
  @override
  build() => false;
  void toggle() => state = !state;
}
