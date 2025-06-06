import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/index.dart';
import 'package:rick_and_morty/data/index.dart';

class CardDescr extends StatelessWidget {
  final Character character;
  const CardDescr(this.character, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // имя
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            // имя
            Text(
              character.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.h1,
            ),

            const SizedBox(height: 10),

            // вид
            const Text('Species', style: TextStyles.h3),
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
