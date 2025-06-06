import 'package:flutter/material.dart';
import 'package:rick_and_morty/domain/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

class CharactersListView extends StatelessWidget {
  final List<CharacterWithFavorite> characters;
  final bool? addToFavoriteButton;
  const CharactersListView({
    super.key,
    required this.characters,
    this.addToFavoriteButton,
  });

  @override
  Widget build(_) {
    return ListView.separated(
      itemCount: characters.length,
      itemBuilder: (_, int index) {
        final character = characters[index];
        return Padding(
          // горизонтальный отступ карточки
          padding: const EdgeInsets.symmetric(horizontal: 16),

          // карточка
          child: CharacterCard(
            characterWithFavorite: character,
            addToFavoriteButton: addToFavoriteButton ?? false,
          ),
        );
      },

      // отступ между карточками
      separatorBuilder: (_, _) {
        return const SizedBox(height: 20);
      },
    );
  }
}
