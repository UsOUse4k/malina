import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:malina/core/di/injection.dart';
import 'package:malina/core/router/routes.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class GoRouterModule {
  @lazySingleton
  GoRouter goRouter() {
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      observers: [
        TalkerRouteObserver(getIt<Talker>()),
      ],
      routes: [
        ...$appRoutes,
      ],
    );
  }
}
