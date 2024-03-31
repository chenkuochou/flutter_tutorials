import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeIndexProvider =
    NotifierProvider<HomeIndexNotifier, int>(HomeIndexNotifier.new);

// discouraging using StateNotifier, https://riverpod.dev/docs/migration/from_state_notifier
class HomeIndexNotifier extends Notifier<int> {
  @override
  build() => 0;
  void updateIndex(int index) => state = index;
}

