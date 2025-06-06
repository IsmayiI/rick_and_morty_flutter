import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/index.dart';
import 'package:rick_and_morty/domain/index.dart';

import 'utils.dart';
import 'widgets/card_button.dart';
import 'widgets/card_descr.dart';
import 'widgets/card_img.dart';

class CharacterCard extends StatelessWidget {
  final CharacterWithFavorite characterWithFavorite;
  final bool addToFavoriteButton;
  const CharacterCard({
    super.key,
    required this.characterWithFavorite,
    this.addToFavoriteButton =
        false, // по умолчанию будем показывать кнопку удаления
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
              CardImg(character.image),

              const SizedBox(width: 16),
              // описание
              Expanded(child: CardDescr(character)),
            ],
          ),

          // кнопка
          Positioned(
            bottom: 0,
            right: 0,
            child: CardButton(
              characterWithFavorite,
              addToFavoriteButton ? TypeButton.add : TypeButton.delete,
            ),
          ),
        ],
      ),
    );
  }
}
