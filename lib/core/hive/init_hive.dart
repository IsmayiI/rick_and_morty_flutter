import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty/data/index.dart';
import 'package:rick_and_morty/domain/index.dart';

Future<void> initHive() async {
  await Hive.initFlutter();

  Hive.registerAdapter(CharacterAdapter());
  Hive.registerAdapter(CharacterWithFavoriteAdapter());

  await Hive.openBox<CharacterWithFavorite>('characters');
}
