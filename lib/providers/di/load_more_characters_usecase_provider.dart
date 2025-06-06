import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/use_cases/index.dart';

import 'connectivity_provider.dart';
import 'get_all_characters_usecase_provider.dart';

final loadMoreCharactersUseCaseProvider = Provider((ref) {
  final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
  final connectivity = ref.read(connectivityProvider);
  return LoadMoreCharactersUseCase(getAllCharacters, connectivity);
});
