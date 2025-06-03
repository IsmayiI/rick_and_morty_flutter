import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/components/index.dart';
import 'package:rick_and_morty/pages/index.dart' show FavoritePage, HomePage;
import 'package:rick_and_morty/providers/navigation_provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [HomePage(), FavoritePage()];

    return Scaffold(
      appBar: AppBar(title: Text('The Rick and Morty')),
      bottomNavigationBar: Navbar(),
      body: Consumer(
        builder: (_, ref, __) {
          final index = ref.watch(navigationProvider);
          return IndexedStack(index: index, children: pages);
        },
      ),
    );
  }
}
