import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/config/index.dart' show AppConstants;

final dioProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: AppConstants.apiBaseUrl)),
);
