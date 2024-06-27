import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_colors.dart';

class RootBottomNavigationBarItem extends StatelessWidget {
  const RootBottomNavigationBarItem({
    super.key,
    required this.path,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  final String path;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(path),
              const Gap(2),
              Text(
                label,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: !isSelected ? const Color(0xFF8D8D8D) : AppColors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
