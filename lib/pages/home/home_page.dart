import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/components/index.dart';
import 'package:rick_and_morty/providers/all_characters_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAllCharacters = ref.watch(allCharactersProvider);
    final notifier = ref.read(allCharactersProvider.notifier);

    ref.listen(
      allCharactersProvider.select(
        (data) => data.whenData((data) => data.hasMore),
      ),
      (previous, next) {
        next.whenData((hasMore) {
          if (hasMore == false) {
            showDialog(
              context: context,
              builder: (_) =>
                  const AlertDialog(title: Text('No more characters')),
            );
          }
        });
      },
    );

    return RefreshIndicator(
      onRefresh: () => notifier.getAllCharacters(),
      child: Scaffold(
        body: asyncAllCharacters.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, st) => const Center(child: Text('error')),
          data: (allCharacters) {
            final characters = allCharacters.characters;

            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Expanded(
                    // подгружаем следующую страничку
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if (notification.metrics.pixels ==
                            notification.metrics.maxScrollExtent) {
                          notifier.loadMoreCharacters();
                        }
                        return false;
                      },

                      // список
                      child: ListView.separated(
                        itemCount: characters.length,
                        itemBuilder: (context, index) {
                          final character = characters[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: CharacterCard(
                              characterWithFavorite: character,
                              addToFavoriteButton: true,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: 20),
                      ),
                    ),
                  ),

                  if (allCharacters.isLoadingMore)
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
