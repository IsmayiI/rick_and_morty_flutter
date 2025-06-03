import 'package:rick_and_morty/domain/models/index.dart';
import 'package:rick_and_morty/domain/repositories/index.dart';

class GetCharactersUseCase {
  final AppRepository repository;

  GetCharactersUseCase(this.repository);

  Future<CharacterResponse> call(int page) async {
    try {
      return await repository.getCharacters(page);
    } catch (e) {
      rethrow;
    }
  }
}
