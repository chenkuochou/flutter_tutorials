import 'package:flutter/material.dart';
import 'package:flutter_tutorials/tutorials/auth_firebase/auth_repository.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController(text: 'a@a.com');
    final passwordController = TextEditingController(text: '123456');

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 100),
      child: Column(
        children: [
          const Text('Login'),
          const Gap(50), // same as: const SizedBox(height: 50),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
          ),
          const Gap(50),
          ElevatedButton(
            onPressed: () async {
              try {
                await ref.read(authControllerProvider.notifier).signIn(
                      emailController.text,
                      passwordController.text,
                    );
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(e.toString())),
                  );
                }
              }
            },
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
