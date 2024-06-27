import 'package:flutter/material.dart';
import 'package:malina/features/app/app.dart';
import 'package:malina/core/di/injection.dart';

void main() {
  configureDependencies();

  runApp(const App());
}
