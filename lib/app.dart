import 'package:flutter/material.dart';
import 'package:rick_and_morty/pages/index.dart';

import 'config/index.dart' show lightTheme;

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: MainPage(),
    );
  }
}
