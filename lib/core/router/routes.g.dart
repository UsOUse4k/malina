// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $initialRoute,
      $wrapperRoute,
      $qRCodeScannerRoute,
    ];

RouteBase get $initialRoute => GoRouteData.$route(
      path: '/',
      factory: $InitialRouteExtension._fromState,
    );

extension $InitialRouteExtension on InitialRoute {
  static InitialRoute _fromState(GoRouterState state) => const InitialRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $wrapperRoute => ShellRouteData.$route(
      navigatorKey: WrapperRoute.$navigatorKey,
      factory: $WrapperRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/home',
          factory: $HomeRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/cart',
          factory: $CartRouteExtension._fromState,
        ),
      ],
    );

extension $WrapperRouteExtension on WrapperRoute {
  static WrapperRoute _fromState(GoRouterState state) => const WrapperRoute();
}

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CartRouteExtension on CartRoute {
  static CartRoute _fromState(GoRouterState state) => CartRoute(
        _$CartTypeEnumMap._$fromName(state.uri.queryParameters['type']!),
      );

  String get location => GoRouteData.$location(
        '/cart',
        queryParams: {
          'type': _$CartTypeEnumMap[type],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$CartTypeEnumMap = {
  CartType.goods: 'goods',
  CartType.food: 'food',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

RouteBase get $qRCodeScannerRoute => GoRouteData.$route(
      path: '/qr-code-scanner',
      parentNavigatorKey: QRCodeScannerRoute.$parentNavigatorKey,
      factory: $QRCodeScannerRouteExtension._fromState,
    );

extension $QRCodeScannerRouteExtension on QRCodeScannerRoute {
  static QRCodeScannerRoute _fromState(GoRouterState state) =>
      const QRCodeScannerRoute();

  String get location => GoRouteData.$location(
        '/qr-code-scanner',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
