import 'package:flutter/material.dart';
import 'package:malina/core/widgets/root_bottom_navigation_bar.dart';

class RootScaffold extends StatelessWidget {
  const RootScaffold(this.navigator, {super.key});

  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          navigator,
          const RootBottomNavigationBar(),
        ],
      ),
    );
  }
}
