import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/use_cases/index.dart';

import 'get_all_characters_usecase_provider.dart';

final loadMoreCharactersUseCaseProvider = Provider((ref) {
  final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
  return LoadMoreCharactersUseCase(getAllCharacters);
});
