import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/di/api_client_provider.dart';
import 'config/index.dart' show lightTheme;

class RickAndMortyApp extends ConsumerWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiClient = ref.watch(apiClientProvider);

    return MaterialApp(
      theme: lightTheme,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              try {
                final response = await apiClient.getCharacters();
                inspect(response);
              } catch (e) {
                inspect(e);
              }
            },
            child: const Text('Press Me'),
          ),
        ),
      ),
    );
  }
}
