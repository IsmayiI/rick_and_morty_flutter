import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/components/index.dart';
import 'package:rick_and_morty/providers/all_characters_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAllCharacters = ref.watch(allCharactersProvider);

    return Scaffold(
      body: asyncAllCharacters.when(
        data: (allCharacters) {
          final characters = allCharacters.characters;
          return Padding(
            // отступ сверху списка
            padding: const EdgeInsets.only(top: 20),

            // список
            child: ListView.separated(
              itemCount: characters.length,
              itemBuilder: (BuildContext context, int index) {
                final character = characters[index].character;
                return Padding(
                  // горизонтальный отступ карточки
                  padding: const EdgeInsets.symmetric(horizontal: 16),

                  // карточка
                  child: CharacterCard(character: character),
                );
              },

              // отступ между карточками
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 20);
              },
            ),
          );
        },

        error: (err, st) => Center(child: Text('error')),

        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
