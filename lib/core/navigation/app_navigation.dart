import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  const AppRoute(this.location);

  final String location;

  void go(BuildContext context, {Object? extra}) => context.go(location, extra: extra);

  void push(BuildContext context, {Object? extra}) => context.push(location, extra: extra);

  void pushReplacement(BuildContext context, {Object? extra}) => context.pushReplacement(location, extra: extra);
}

abstract class AppNavigation {
  // root pages
  static const AppRoute root = AppRoute('/');
  static const AppRoute lessons = AppRoute('/lessons');

  // detail pages
  static AppRoute lessonDetails(String id) => AppRoute('/lessons/$id');
}
