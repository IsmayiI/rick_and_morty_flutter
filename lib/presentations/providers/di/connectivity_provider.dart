import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityProvider = Provider((ref) => Connectivity());

final connectivityStreamProvider = StreamProvider<ConnectivityResult>((ref) {
  final connectivity = ref.watch(connectivityProvider);

  return connectivity.onConnectivityChanged.map((list) => list.first);
});

final hasInternetProvider = Provider<bool>((ref) {
  final result = ref.watch(connectivityStreamProvider).value;
  return result == ConnectivityResult.mobile ||
      result == ConnectivityResult.wifi;
});
