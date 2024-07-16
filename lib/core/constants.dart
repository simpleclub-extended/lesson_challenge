import 'package:flutter/widgets.dart';

abstract class Constants {
  static const double pagePadding = 16;

  static const List<BoxShadow> dropShadow = [
    BoxShadow(
      color: Color(0x1F000000),
      blurRadius: 6,
      offset: Offset.zero,
    ),
  ];
}
