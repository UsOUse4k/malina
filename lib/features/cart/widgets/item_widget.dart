import 'package:flutter/material.dart' hide IconButton;
import 'package:gap/gap.dart';
import 'package:malina/features/cart/widgets/delete_icon_button.dart';
import 'package:malina/features/cart/widgets/icon_button.dart';
import 'package:malina/gen/assets.gen.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
  });

  final String imagePath;
  final String name;
  final String description;
  final int price;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          Container(
            width: 110,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                filterQuality: FilterQuality.high,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          const Gap(9),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        height: 1,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "$price ",
                          ),
                          const TextSpan(
                            text: "C",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Gap(5),
                Text(
                  description,
                  style: const TextStyle(
                    height: 1.1,
                    fontSize: 12,
                    color: Color(0xFF777777),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      iconPath: Assets.icons.add.path,
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: SizedBox(
                        width: 30,
                        child: Center(
                          child: Text(
                            quantity.toString(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      iconPath: Assets.icons.remove.path,
                      onTap: () {},
                    ),
                    const Spacer(),
                    DeleteIconButton(
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
