import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/components/index.dart';
import 'package:rick_and_morty/providers/all_characters_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<HomePage> {
  late final ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();

    scrollController.addListener(() async {
      final allCharacters = ref.read(allCharactersProvider);

      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        allCharacters.whenData((data) async {
          if (data.hasMore == false) {
            showDialog(
              context: context,
              builder: (_) =>
                  const AlertDialog(title: Text('No more characters')),
            );
            return;
          } else {
            await ref.read(allCharactersProvider.notifier).loadMoreCharacters();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncAllCharacters = ref.watch(allCharactersProvider);

    return Scaffold(
      body: asyncAllCharacters.when(
        data: (allCharacters) {
          final characters = allCharacters.characters;
          return Padding(
            // отступ сверху списка
            padding: const EdgeInsets.only(top: 20),

            child: Column(
              children: [
                // список
                Expanded(
                  child: ListView.separated(
                    controller: scrollController,
                    itemCount: characters.length,
                    itemBuilder: (BuildContext context, int index) {
                      final character = characters[index];
                      return Padding(
                        // горизонтальный отступ карточки
                        padding: const EdgeInsets.symmetric(horizontal: 16),

                        // карточка
                        child: CharacterCard(
                          characterWithFavorite: character,
                          addToFavoriteButton: true,
                        ),
                      );
                    },

                    // отступ между карточками
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 20);
                    },
                  ),
                ),

                // индикатор загрузки следующих страничек списка
                if (allCharacters.isLoadingMore)
                  const CircularProgressIndicator(padding: EdgeInsets.all(20)),
              ],
            ),
          );
        },

        error: (err, st) => Center(child: Text('error')),

        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
