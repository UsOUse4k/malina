import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class TalkerModule {
  @lazySingleton
  Talker talker() {
    final talker = TalkerFlutter.init();

    return talker;
  }
}
