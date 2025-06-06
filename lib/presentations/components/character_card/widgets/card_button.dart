import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/index.dart';
import 'package:rick_and_morty/domain/index.dart';
import 'package:rick_and_morty/presentations/providers/index.dart';

import '../utils.dart';

class CardButton extends ConsumerWidget {
  final CharacterWithFavorite characterWithFavorite;
  final TypeButton typeButton;
  const CardButton(this.characterWithFavorite, this.typeButton, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = characterWithFavorite.character.id;
    late IconData icon;

    if (typeButton == TypeButton.add) icon = Icons.star_border;
    if (characterWithFavorite.isFavorite) icon = Icons.star;
    if (typeButton == TypeButton.delete) icon = Icons.delete_outline;

    return IconButton(
      onPressed: typeButton == TypeButton.add
          ? () => ref.read(allCharactersProvider.notifier).addToFavorite(id)
          : () =>
                ref.read(allCharactersProvider.notifier).deleteFromFavorite(id),

      icon: Icon(icon),

      // style
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(50, 50),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: AppColorsLight.primary,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(12)),
        ),
      ),
    );
  }
}
