import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina/core/widgets/root_scaffold.dart';
import 'package:malina/features/cart/pages/cart_page.dart';
import 'package:malina/features/home/pages/home_page.dart';
import 'package:malina/features/qr_code_scanner/pages/qr_code_scanner_page.dart';

part 'routes.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<InitialRoute>(path: "/")
class InitialRoute extends GoRouteData {
  const InitialRoute();

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) {
    return const HomeRoute().location;
  }
}

@TypedShellRoute<WrapperRoute>(
  routes: [
    TypedGoRoute<HomeRoute>(path: "/home"),
    TypedGoRoute<CartRoute>(path: "/cart"),
  ],
)
class WrapperRoute extends ShellRouteData {
  const WrapperRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return RootScaffold(navigator);
  }
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: HomePage(),
    );
  }
}

class CartRoute extends GoRouteData {
  const CartRoute(this.type);

  final CartType type;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(
      child: CartPage(
        type: type,
      ),
    );
  }
}

@TypedGoRoute<QRCodeScannerRoute>(path: "/qr-code-scanner")
class QRCodeScannerRoute extends GoRouteData {
  const QRCodeScannerRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const QRCodeScannerPage();
  }
}
