import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'di/get_characters_usecase_provider.dart';

final getCharactersProvider = FutureProvider((ref) {
  final getCharacters = ref.read(getCharactersUseCaseProvider);
  return getCharacters();
});
