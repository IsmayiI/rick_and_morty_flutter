import 'package:rick_and_morty/presentations/pages/index.dart';

abstract class AppConstants {
  static const apiBaseUrl = 'https://rickandmortyapi.com/api';
  static const totalPages = 42;
  static const pages = [HomePage(), FavoritePage()];
}
