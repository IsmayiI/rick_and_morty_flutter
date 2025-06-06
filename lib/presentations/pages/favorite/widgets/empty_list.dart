import 'package:flutter/material.dart';
import 'package:rick_and_morty/core/index.dart';

class EmptyList extends StatelessWidget {
  const EmptyList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Characters not found',
        style: TextStyle(fontSize: 20, color: AppColorsLight.primary),
      ),
    );
  }
}
