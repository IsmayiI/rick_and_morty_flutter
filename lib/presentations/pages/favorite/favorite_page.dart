import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/presentations/index.dart';

import 'widgets/empty_list.dart';
import 'widgets/sort.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortedCharacters = ref.watch(
      allCharactersProvider.select(
        (async) => async.value?.sortedCharacters ?? [],
      ),
    );

    // список избранных персонажей
    return Scaffold(
      body: Padding(
        // отступ сверху списка
        padding: const EdgeInsets.only(top: 20),

        child: Column(
          children: [
            // сортировка
            const Sort(),

            // если список избранных персонажей пуст
            if (sortedCharacters.isEmpty) const EmptyList(),

            // список
            Expanded(child: CharactersListView(characters: sortedCharacters)),
          ],
        ),
      ),
    );
  }
}
