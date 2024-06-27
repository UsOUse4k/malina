import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButton extends StatelessWidget {
  const IconButton({
    super.key,
    required this.iconPath,
    this.onTap,
  });

  final String iconPath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(9.44),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: SvgPicture.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
