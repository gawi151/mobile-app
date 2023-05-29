import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'theme_mode_provider.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return IconButton(
      icon: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
            themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode),
      ),
      onPressed: () {
        ref.read(themeModeProvider.notifier).state =
            themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
      },
    );
  }
}
