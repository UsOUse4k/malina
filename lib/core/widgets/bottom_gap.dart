import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class BottomGap extends StatelessWidget {
  const BottomGap({super.key});

  @override
  Widget build(BuildContext context) {
    return Gap(70 + MediaQuery.of(context).padding.bottom);
  }
}