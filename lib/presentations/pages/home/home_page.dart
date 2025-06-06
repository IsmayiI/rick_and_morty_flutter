import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/presentations/index.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncAllCharacters = ref.watch(allCharactersProvider);
    final hasInternet = ref.watch(hasInternetProvider);
    final notifier = ref.read(allCharactersProvider.notifier);

    return RefreshIndicator(
      onRefresh: () => notifier.getAllCharacters(),
      child: Scaffold(
        body: asyncAllCharacters.when(
          // загрузка
          loading: () => const Center(child: CircularProgressIndicator()),

          // ошибка
          error: (err, st) => const Center(child: Text('error')),

          // данные
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
                                notification.metrics.maxScrollExtent &&
                            allCharacters.hasMore &&
                            hasInternet) {
                          notifier.loadMoreCharacters();
                        }
                        return false;
                      },

                      // список
                      child: CharactersListView(
                        characters: characters,
                        addToFavoriteButton: true,
                      ),
                    ),
                  ),

                  // лоадер пагинации
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
