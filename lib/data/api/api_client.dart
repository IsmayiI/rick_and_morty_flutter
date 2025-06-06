import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rick_and_morty/data/index.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: '')
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/character')
  Future<CharacterResponse> getCharacters(@Query('page') int page);
}
