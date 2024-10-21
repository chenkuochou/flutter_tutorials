import 'package:flutter/material.dart';
import 'package:flutter_tutorials/tutorials/auth_firebase/login_page.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_tutorials/tutorials/auth_firebase/auth_repository.dart';

class AuthPage extends HookConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return authState.when(
      data: (user) {
        if (user != null) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${user.email} is logged in'),
              const Gap(50),
              ElevatedButton(
                onPressed: () {
                  ref.read(authControllerProvider.notifier).signOut();
                },
                child: const Text('Sign Out'),
              ),
            ],
          );
        } else {
          return const LoginPage();
        }
      },
      loading: () => const CircularProgressIndicator(),
      error: (error, stack) => Text(error.toString()),
    );
  }
}
