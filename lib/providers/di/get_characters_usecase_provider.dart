import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/use_cases/index.dart';

import 'app_repository_provider.dart';

final getCharactersUseCaseProvider = Provider((ref) {
  final appRepository = ref.watch(appRepositoryProvider);
  return GetCharactersUseCase(appRepository);
});
