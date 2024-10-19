import 'package:flutter/material.dart';
import 'package:flutter_tutorials/core/tutorial_model.dart';
import 'package:flutter_tutorials/core/tutorial_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<TutorialModel> tutorials = tutorialList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Tutorials'),
      ),
      body: ListView.builder(
        itemCount: tutorials.length,
        itemBuilder: (context, index) {
          final tutorial = tutorials[index];
          return ListTile(
            leading: Icon(tutorial.icon),
            title: Text(tutorial.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailPage(tutorial: tutorial),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class HomeDetailPage extends StatelessWidget {
  final TutorialModel tutorial;

  const HomeDetailPage({super.key, required this.tutorial});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tutorial.title),
      ),
      body: Center(
        child: tutorial.widget,
      ),
    );
  }
}
