import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/constants/app_colors.dart';

class CartPanelItem extends StatelessWidget {
  const CartPanelItem({
    super.key,
    required this.path,
    required this.label,
    this.notificationsCount = 0,
    this.onTap,
  });

  final String path;
  final String label;
  final int notificationsCount;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 60,
          height: 60,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Color(0xFFF5F5F6),
            shape: BoxShape.circle,
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
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 10,
                      color: Color(0xFF1D1D1D),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 6,
          child: Visibility(
            visible: notificationsCount > 0,
            child: Container(
              width: 13,
              height: 13,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                notificationsCount.toString(),
                style: const TextStyle(
                  fontSize: 7,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
