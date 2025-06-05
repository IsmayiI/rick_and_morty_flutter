import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/components/index.dart';
import 'package:rick_and_morty/config/index.dart';
import 'package:rick_and_morty/providers/all_characters_provider.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sortedCharacters = ref.watch(
      allCharactersProvider.select(
        (async) => async.value?.sortedCharacters ?? [],
      ),
    );

    return Scaffold(
      body: Padding(
        // отступ сверху списка
        padding: const EdgeInsets.only(top: 20),

        child: Column(
          children: [
            _SortBySpecies(),
            // список
            Expanded(
              child: ListView.separated(
                itemCount: sortedCharacters.length,
                itemBuilder: (BuildContext context, int index) {
                  final character = sortedCharacters[index];
                  return Padding(
                    // горизонтальный отступ карточки
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                    // карточка
                    child: CharacterCard(characterWithFavorite: character),
                  );
                },

                // отступ между карточками
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 20);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SortBySpecies extends ConsumerWidget {
  const _SortBySpecies();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        PopupMenuButton<String>(
          icon: Icon(Icons.sort, color: AppColorsLight.primary),
          onSelected: (value) {
            ref.read(allCharactersProvider.notifier).sortBySpecies(value);
          },
          itemBuilder: (context) => [
            PopupMenuItem(value: 'All', child: Text('all')),
            PopupMenuItem(value: 'Human', child: Text('human')),
            PopupMenuItem(value: 'Alien', child: Text('alien')),
          ],
        ),
      ],
    );
  }
}
