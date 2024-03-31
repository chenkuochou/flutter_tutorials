import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorials/home/tutorial_model.dart';
import 'package:flutter_tutorials/state_management/state_management_riverpod.dart';
import 'package:flutter_tutorials/state_management/state_management_set_state.dart';

final homeIndexProvider =
    NotifierProvider<HomeIndexNotifier, int>(HomeIndexNotifier.new);

// Discouraging using StateNotifier, https://riverpod.dev/docs/migration/from_state_notifier
class HomeIndexNotifier extends Notifier<int> {
  @override
  build() => 0;
  void updateIndex(int index) => state = index;
}

final tutorialProvider = Provider<List<TutorialModel>>((ref) => [
      TutorialModel(
        title: 'State Management with Riverpod',
        widget: const StateManagementRiverpod(),
        icon: Icons.abc,
      ),
      TutorialModel(
        title: 'State Management with SetState',
        widget: const StateManagementSetState(),
        icon: Icons.ac_unit,
      ),
    ]);
