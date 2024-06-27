import 'package:flutter/material.dart';

abstract class AppShadows {
  static final BoxShadow common = BoxShadow(
    offset: const Offset(0, 2),
    blurRadius: 20,
    color: const Color(0xFF5F6773).withOpacity(0.1),
  );
}
