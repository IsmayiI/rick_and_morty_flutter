import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationProvider = NotifierProvider(NavigationNotifier.new);

class NavigationNotifier extends Notifier<int> {
  @override
  int build() => 0;

  void changeIndex(int index) => state = index;
}
