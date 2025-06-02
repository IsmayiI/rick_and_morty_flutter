import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/services/rick_and_morty_api/api.dart';

import 'config/index.dart' show lightTheme, AppConstants;

class RickAndMortyApp extends StatelessWidget {
  RickAndMortyApp({super.key});

  final Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              try {
                final response = await RickAndMortyApiClient(
                  dio,
                  baseUrl: AppConstants.apiBaseUrl,
                ).getCharacters();
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
