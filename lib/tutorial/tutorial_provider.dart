import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorials/tutorial/state_management/state_management_riverpod.dart';
import 'package:flutter_tutorials/tutorial/state_management/state_management_set_state.dart';
import 'package:flutter_tutorials/tutorial/tutorial_model.dart';

final tutorialProvider = Provider<List<TutorialModel>>((ref) => [
      TutorialModel(
        title: 'State Management with Riverpod',
        widget: const StateManagementRiverpod(),
        icon: Icons.waves,
      ),
      TutorialModel(
        title: 'State Management with SetState',
        widget: const StateManagementSetState(),
        icon: Icons.web_asset,
      ),
    ]);
