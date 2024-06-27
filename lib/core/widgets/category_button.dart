import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/constants/app_colors.dart';
import 'package:malina/gen/assets.gen.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    this.onTap,
    this.isAlternative = false,
  });

  final VoidCallback? onTap;
  final bool isAlternative;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.red,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 14.73,
            color: const Color(0xFFAA0D34).withOpacity(0.35),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Center(
            child: SvgPicture.asset(
              !isAlternative
                  ? Assets.icons.category.path
                  : Assets.icons.categoryAlt.path,
            ),
          ),
        ),
      ),
    );
  }
}
