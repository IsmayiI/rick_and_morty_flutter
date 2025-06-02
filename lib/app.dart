import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/all_characters_provider.dart';
import 'providers/di/api_client_provider.dart';
import 'config/index.dart' show lightTheme;

class RickAndMortyApp extends ConsumerWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final apiClient = ref.watch(apiClientProvider);
    final allCharacters = ref.watch(allCharactersProvider);

    return MaterialApp(
      theme: lightTheme,
      home: Scaffold(
        body: Center(
          child: allCharacters.when(
            data: (data) {
              inspect(data);
              return ElevatedButton(
                onPressed: () async {
                  try {
                    ref.read(allCharactersProvider.notifier).refreshList();
                  } catch (e) {
                    inspect(e);
                  }
                },
                child: const Text('Press Me'),
              );
            },
            error: (error, stack) {
              inspect(error);
            },
            loading: () {
              inspect('Loading characters...');
            },
          ),
        ),
      ),
    );
  }
}
