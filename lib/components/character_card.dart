import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/config/index.dart';
import 'package:rick_and_morty/domain/models/index.dart';
import 'package:rick_and_morty/providers/all_characters_provider.dart';
import 'package:rick_and_morty/state/models/character_with_favorite/character_with_favorite.dart';

// Типы кнопок
enum TypeButton { add, delete }

class CharacterCard extends StatelessWidget {
  final CharacterWithFavorite characterWithFavorite;
  final bool addToFavoriteButton;
  const CharacterCard({
    super.key,
    required this.characterWithFavorite,
    this.addToFavoriteButton = false,
  });

  @override
  Widget build(BuildContext context) {
    final character = characterWithFavorite.character;

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColorsLight.cardBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              // картинка
              _CardImage(character: character),

              SizedBox(width: 16),
              // описание
              Expanded(child: _CardDescription(character: character)),
            ],
          ),

          // кнопка
          Positioned(
            bottom: 0,
            right: 0,
            child: _Button(
              characterWithFavorite,
              addToFavoriteButton ? TypeButton.add : TypeButton.delete,
            ),
          ),
        ],
      ),
    );
  }
}

class _Button extends ConsumerWidget {
  final CharacterWithFavorite characterWithFavorite;
  final TypeButton typeButton;
  const _Button(this.characterWithFavorite, this.typeButton);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = characterWithFavorite.character.id;
    late IconData icon;

    if (typeButton == TypeButton.add) icon = Icons.star_border;
    if (characterWithFavorite.isFavorite) icon = Icons.star;
    if (typeButton == TypeButton.delete) icon = Icons.delete_outline;
    // final icon = characterWithFavorite.isFavorite
    //     ? Icons.star
    //     : Icons.star_border;

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

class _CardDescription extends StatelessWidget {
  const _CardDescription({required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // имя
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              character.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.h1,
            ),

            SizedBox(height: 10),

            // вид
            Text('Species', style: TextStyles.h3),
            Text(
              character.species,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.h2,
            ),
          ],
        ),
      ],
    );
  }
}

class _CardImage extends StatelessWidget {
  const _CardImage({required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: character.image,
      width: 143,
      height: 143,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          const Icon(Icons.image_not_supported),
    );
  }
}
