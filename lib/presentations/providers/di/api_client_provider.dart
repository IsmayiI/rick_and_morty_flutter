import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/data/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

final apiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return ApiClient(dio);
});
