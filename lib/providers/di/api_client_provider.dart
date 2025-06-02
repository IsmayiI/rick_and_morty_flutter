import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/api/index.dart';

import 'dio_provider.dart';

final apiClientProvider = Provider((ref) {
  final dio = ref.read(dioProvider);
  return ApiClient(dio);
});
