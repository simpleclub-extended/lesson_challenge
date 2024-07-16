import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/lessons_api/lessons_api.dart';
import '../../data/repository/repository.dart';
import '../navigation/app_router.dart';

/// Dependency injection of global dependencies.
class AppDependencies extends StatelessWidget {
  const AppDependencies({
    super.key,
    this.child,
    this.builder,
  }) : assert(child != null || builder != null, 'Either child or builder must be provided!');

  final Widget? child;
  final WidgetBuilder? builder;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LessonsApiClient>(create: (context) => LessonsApiClient()),
        Provider<AppRepository>(create: (context) => AppRepository(context.read())),
        Provider<AppRouter>(create: (context) => AppRouter()),
      ],
      builder: builder != null ? (context, child) => builder!(context) : null,
      child: child,
    );
  }
}
