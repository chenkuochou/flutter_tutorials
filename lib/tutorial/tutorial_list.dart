import 'package:flutter/material.dart';
import 'package:flutter_tutorials/tutorial/auth_firebase/auth_repository.dart';
import 'package:flutter_tutorials/tutorial/state_management/state_management_riverpod.dart';
import 'package:flutter_tutorials/tutorial/state_management/state_management_riverpod_code.dart';
import 'package:flutter_tutorials/tutorial/state_management/state_management_set_state.dart';
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
    widget: const AuthRepositoryPage(),
    icon: Icons.login,
  )
];
