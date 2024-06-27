// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:malina/core/monitoring/talker_module.dart' as _i8;
import 'package:malina/core/router/go_router_module.dart' as _i7;
import 'package:malina/features/item/data/dummy_item_repository.dart' as _i6;
import 'package:malina/features/item/domain/i_item_repository.dart' as _i5;
import 'package:talker_flutter/talker_flutter.dart' as _i4;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final goRouterModule = _$GoRouterModule();
    final talkerModule = _$TalkerModule();
    gh.lazySingleton<_i3.GoRouter>(() => goRouterModule.goRouter());
    gh.lazySingleton<_i4.Talker>(() => talkerModule.talker());
    gh.lazySingleton<_i5.IItemRepository>(() => _i6.DummyItemRepository());
    return this;
  }
}

class _$GoRouterModule extends _i7.GoRouterModule {}

class _$TalkerModule extends _i8.TalkerModule {}
