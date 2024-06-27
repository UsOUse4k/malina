import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  const TextButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 34,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
