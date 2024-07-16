import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

late final Logger logger;

void setupLogging(String name) {
  logger = Logger(name);
  Logger.root.level = Level.ALL;
  if (kDebugMode) {
    Logger.root.onRecord.listen((record) {
      log(
        '${record.time}:${record.level.name}: ${record.message}',
        time: record.time,
        sequenceNumber: record.sequenceNumber,
        level: record.level.value,
        name: record.loggerName,
        zone: record.zone,
        error: record.error,
        stackTrace: record.stackTrace,
      );
    });
  }
}
