import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../navigation/app_router.dart';
import '../app_dependencies.dart';
import '../theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDependencies(
      builder: (context) {
        return MaterialApp.router(
          theme: createLightTheme(),
          darkTheme: createDarkTheme(),
          routerConfig: context.read<AppRouter>().goRouter,
          builder: (context, child) => child!,
        );
      },
    );
  }
}
