import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/index.dart';

import 'api_client_provider.dart';

final appRepositoryProvider = Provider<AppRepository>((ref) {
  final apiClient = ref.watch(apiClientProvider);
  return AppRepository(apiClient);
});
