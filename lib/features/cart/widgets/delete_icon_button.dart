import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/gen/assets.gen.dart';

class DeleteIconButton extends StatelessWidget {
  const DeleteIconButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 34,
      height: 34,
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(9.44),
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Center(
            child: SvgPicture.asset(
              Assets.icons.delete.path,
            ),
          ),
        ),
      ),
    );
  }
}
