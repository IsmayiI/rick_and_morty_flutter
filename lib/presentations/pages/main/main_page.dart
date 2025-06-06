import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('The Rick and Morty')),
      bottomNavigationBar: const Navbar(),
      body: Consumer(
        builder: (_, ref, __) {
          final index = ref.watch(navigationProvider);
          return IndexedStack(index: index, children: AppConstants.pages);
        },
      ),
    );
  }
}
