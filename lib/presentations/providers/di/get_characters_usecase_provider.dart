import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

final getCharactersUseCaseProvider = Provider((ref) {
  final appRepository = ref.watch(appRepositoryProvider);
  return GetCharactersUseCase(appRepository);
});
