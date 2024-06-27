import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_shadows.dart';

class Panel extends StatelessWidget {
  const Panel({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFFFDF94),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [AppShadows.common],
        image: DecorationImage(
          alignment: Alignment.bottomRight,
          filterQuality: FilterQuality.high,
          image: AssetImage(imagePath),
        ),
      ),
      padding: const EdgeInsets.only(
        left: 17,
        top: 23,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(10),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
