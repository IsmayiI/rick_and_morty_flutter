import 'package:rick_and_morty/domain/api/index.dart';
import 'package:rick_and_morty/domain/models/index.dart';

class AppRepository {
  final ApiClient apiClient;

  AppRepository(this.apiClient);

  Future<CharacterResponse> getCharacters() async {
    try {
      final response = await apiClient.getCharacters();
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
