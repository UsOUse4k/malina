import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_colors.dart';
import 'package:malina/core/constants/app_shadows.dart';
import 'package:malina/gen/assets.gen.dart';

class QrCodeScannerPanel extends StatelessWidget {
  const QrCodeScannerPanel({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.red,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [AppShadows.common],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 11,
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.images.qr.path,
                  width: 36,
                  height: 68,
                  filterQuality: FilterQuality.high,
                ),
                const Gap(17),
                const Text(
                  "Сканируй QR-код и заказывай\nпрямо в заведении",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
