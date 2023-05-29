import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nbp_exchange_rates/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'theme/theme.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final _router = GoRouter(routes: $appRoutes);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final themeMode = ref.watch(themeModeProvider);
        return MaterialApp.router(
          title: 'NBP Exchange Rates',
          themeMode: themeMode,
          theme: ThemeData.light(useMaterial3: true),
          darkTheme: ThemeData.dark(useMaterial3: true),
          routerConfig: _router,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
