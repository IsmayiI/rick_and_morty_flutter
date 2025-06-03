import 'package:flutter/material.dart';
import 'package:rick_and_morty/config/index.dart';
import 'package:rick_and_morty/domain/models/index.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  const CharacterCard({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
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

          // кнопка добавить в избранное
          Positioned(bottom: 0, right: 0, child: _AddToFavoriteButton()),
        ],
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

class _AddToFavoriteButton extends StatelessWidget {
  const _AddToFavoriteButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.star_border_outlined),

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

class _CardImage extends StatelessWidget {
  const _CardImage({required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      character.image,
      width: 143,
      height: 143,
      fit: BoxFit.cover,
    );
  }
}
