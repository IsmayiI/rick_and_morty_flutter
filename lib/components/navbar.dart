import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rick_and_morty/providers/navigation_provider.dart';

class Navbar extends ConsumerWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      // navbar vertical padding
      padding: const EdgeInsets.symmetric(vertical: 14),

      // navbar
      child: GNav(
        // navbar style
        padding: const EdgeInsets.all(10),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 20,
        gap: 5,
        color: Colors.grey.shade500,
        activeColor: Colors.grey.shade900,
        tabBackgroundColor: Colors.grey.shade100,

        // navbar tabs
        tabs: const [
          // home
          GButton(icon: Icons.home, text: 'home'),

          // favorite
          GButton(icon: Icons.star, text: 'Favorite'),
        ],

        // on tab change
        onTabChange: (index) =>
            ref.read(navigationProvider.notifier).changeIndex(index),
      ),
    );
  }
}
