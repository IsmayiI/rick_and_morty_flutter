import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/index.dart';
import 'package:rick_and_morty/presentations/providers/index.dart';

class Sort extends ConsumerWidget {
  const Sort({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopupMenuButton<String>(
          icon: const Icon(Icons.sort, color: AppColorsLight.primary),
          onSelected: (value) {
            ref.read(allCharactersProvider.notifier).sortBySpecies(value);
          },
          itemBuilder: (context) => const [
            PopupMenuItem(value: 'All', child: Text('all')),
            PopupMenuItem(value: 'Human', child: Text('human')),
            PopupMenuItem(value: 'Alien', child: Text('alien')),
          ],
        ),
      ],
    );
  }
}
