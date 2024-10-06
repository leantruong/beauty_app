import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:beauty_app/config/routes/route.dart';
import 'package:beauty_app/config/theme/app_theme.dart';

import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return AdaptiveTheme(
      light: theme.getTheme(),
      dark: theme.getTheme(),
      initial: AdaptiveThemeMode.light,
      builder: (ThemeData light, ThemeData dark) {
        return MaterialApp.router(
          routerConfig: route,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
        );
      },
    );
  }
}
