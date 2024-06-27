import 'package:flutter/material.dart';
import 'package:malina/core/constants/app_colors.dart';

enum SegmentedButtonState {
  idle,
  pressed,
}

class SegmentedButton extends StatelessWidget {
  const SegmentedButton({
    super.key,
    required this.text,
    this.state = SegmentedButtonState.idle,
    this.onTap,
  });

  final String text;
  final SegmentedButtonState state;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: switch (state) {
          SegmentedButtonState.pressed => AppColors.red,
          _ => null,
        },
        border: switch (state) {
          SegmentedButtonState.idle => Border.all(
              color: const Color(0xFFEDEBEB),
            ),
          _ => null,
        },
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onTap?.call();
          },
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: switch (state) {
                  SegmentedButtonState.pressed => Colors.white,
                  _ => const Color(0xFF353535),
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
