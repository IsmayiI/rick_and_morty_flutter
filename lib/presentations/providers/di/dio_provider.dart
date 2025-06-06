import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/core/index.dart';

final dioProvider = Provider(
  (ref) => Dio(BaseOptions(baseUrl: AppConstants.apiBaseUrl)),
);
