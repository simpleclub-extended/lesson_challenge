import 'dart:async';

import 'package:flutter/widgets.dart';

import 'logger.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  setupLogging('lessons_demo');
  FlutterError.onError = (details) {
    logger.severe(details.exceptionAsString(), details.exception, details.stack);
  };

  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(await builder());
    },
    (error, stackTrace) => logger.severe(error.toString(), error, stackTrace),
  );
}
