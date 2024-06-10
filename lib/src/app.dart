import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:super_app/src/core/core.dart';
import 'package:super_app/src/screens/home_screen/providers/mini_app_provider.dart';
import 'package:super_app/src/shared/shared.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter router = AppRouter();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> MiniAppProvider())
      ],
      child: MaterialApp.router(
        title: 'Test',
        routerConfig: router.router,
        theme: AppThemes.themeLight,
        darkTheme: AppThemes.themeDark,
        themeMode: ThemeMode.system,
      ),
    );
  }
}
