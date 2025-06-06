import 'package:rick_and_morty/data/index.dart';

class AppRepository {
  final ApiClient apiClient;

  AppRepository(this.apiClient);

  Future<CharacterResponse> getCharacters(int page) async {
    try {
      final response = await apiClient.getCharacters(page);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
