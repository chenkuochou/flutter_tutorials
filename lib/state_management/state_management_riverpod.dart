import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateManagementRiverpod extends ConsumerWidget {
  const StateManagementRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool power = ref.watch(powerProvider);

    return Container(
      color: power ? Colors.white : Colors.black,
      child: Center(
        child: FilledButton(
          onPressed: () {
            ref.read(powerProvider.notifier).toggle();
          },
          child: power ? const Text('Turn off') : const Text('Turn on'),
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
