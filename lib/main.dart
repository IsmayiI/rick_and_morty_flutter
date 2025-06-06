import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app.dart';
import 'domain/models/index.dart';
import 'state/models/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(CharacterAdapter());
  Hive.registerAdapter(CharacterWithFavoriteAdapter());

  await Hive.openBox<CharacterWithFavorite>('characters');
  runApp(ProviderScope(child: const RickAndMortyApp()));
}
