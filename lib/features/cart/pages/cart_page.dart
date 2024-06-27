import 'package:flutter/material.dart' hide BackButton, TextButton;
import 'package:gap/gap.dart';
import 'package:malina/core/router/routes.dart';
import 'package:malina/features/cart/widgets/back_button.dart';
import 'package:malina/features/cart/widgets/food_cart.dart';
import 'package:malina/features/cart/widgets/product_cart.dart';
import 'package:malina/features/cart/widgets/text_button.dart';

enum CartType {
  goods,
  food,
}

class CartPage extends StatelessWidget {
  const CartPage({
    super.key,
    required this.type,
  });

  final CartType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 6,
                right: 20,
              ),
              child: Row(
                children: [
                  BackButton(
                    onTap: () {
                      const HomeRoute().go(context);
                    },
                  ),
                  const Gap(4),
                  const Text(
                    "Корзина",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    text: "Очистить",
                    onTap: () {},
                  )
                ],
              ),
            ),
            const Gap(13),
            Expanded(
              child: switch (type) {
                CartType.food => const FoodCart(),
                CartType.goods => const ProductCart(),
              },
            ),
          ],
        ),
      ),
    );
  }
}
