import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty/models/index.dart' show CharacterResponse;

part 'api.g.dart';

@RestApi(baseUrl: '')
abstract class RickAndMortyApiClient {
  factory RickAndMortyApiClient(Dio dio, {String baseUrl}) =
      _RickAndMortyApiClient;

  @GET('/character')
  Future<CharacterResponse> getCharacters();
}
