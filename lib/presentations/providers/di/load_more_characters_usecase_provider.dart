import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

final loadMoreCharactersUseCaseProvider = Provider((ref) {
  final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
  final connectivity = ref.read(connectivityProvider);
  return LoadMoreCharactersUseCase(getAllCharacters, connectivity);
});
