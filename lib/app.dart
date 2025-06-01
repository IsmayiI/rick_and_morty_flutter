import 'package:flutter/material.dart';

import 'config/index.dart';

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: Scaffold(body: Center(child: Text('Hello World!!'))),
    );
  }
}
