import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initHive();
  runApp(const ProviderScope(child: RickAndMortyApp()));
}
