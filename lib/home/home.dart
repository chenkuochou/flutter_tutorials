import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tutorials/home/tutorial_model.dart';
import 'package:flutter_tutorials/home/home_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(homeIndexProvider);
    final TutorialModel tutorial = ref.read(tutorialProvider)[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(tutorial.title)),
      ),
      body: Center(
        child: tutorial.widget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) =>
            ref.read(homeIndexProvider.notifier).updateIndex(index),
        items: [
          for (var e in ref.read(tutorialProvider))
            BottomNavigationBarItem(
              label: e.title,
              icon: Icon(e.icon),
            ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
