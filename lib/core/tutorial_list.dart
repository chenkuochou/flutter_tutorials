import 'package:flutter/material.dart';
import 'package:flutter_tutorials/tutorials/auth_firebase/auth_page.dart';
import 'package:flutter_tutorials/tutorials/state_management/state_management_riverpod.dart';
import 'package:flutter_tutorials/tutorials/state_management/state_management_riverpod_code.dart';
import 'package:flutter_tutorials/tutorials/state_management/state_management_set_state.dart';
import 'package:flutter_tutorials/core/tutorial_model.dart';

List<TutorialModel> tutorialList = [
  TutorialModel(
    title: 'State Management with SetState',
    widget: const StateManagementSetState(),
    icon: Icons.web_asset,
  ),
  TutorialModel(
    title: 'State Management with Riverpod',
    widget: const StateManagementRiverpod(),
    icon: Icons.waves,
  ),
  TutorialModel(
    title: 'State Management with Riverpod Code Generator',
    widget: const StateManagementRiverpodCode(),
    icon: Icons.code,
  ),
  TutorialModel(
    title: 'Auth Firebase Repository Pattern',
    widget: const AuthPage(),
    icon: Icons.login,
  )
];
