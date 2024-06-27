import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina/gen/assets.gen.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Material(
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Center(
            child: SvgPicture.asset(Assets.icons.back.path),
          ),
        ),
      ),
    );
  }
}
