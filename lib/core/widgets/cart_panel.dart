import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/widgets/cart_panel_item.dart';
import 'package:malina/core/widgets/root_bottom_navigation_bar_item.dart';
import 'package:malina/gen/assets.gen.dart';

class CartPanel extends StatelessWidget {
  const CartPanel({
    super.key,
    this.onFoodTap,
    this.onGoodsTap,
    this.onCartTap,
  });

  final VoidCallback? onFoodTap;
  final VoidCallback? onGoodsTap;
  final VoidCallback? onCartTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF727272).withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        children: [
          const Gap(5),
          CartPanelItem(
            label: "Еда",
            path: Assets.icons.food.path,
            onTap: () {
              onFoodTap?.call();
            },
          ),
          const Gap(10),
          CartPanelItem(
            label: "Товары",
            path: Assets.icons.product.path,
            notificationsCount: 1,
            onTap: () {
              onGoodsTap?.call();
            },
          ),
          const Gap(4),
          RootBottomNavigationBarItem(
            path: Assets.icons.cart.path,
            label: "Корзина",
            isSelected: true,
            onTap: () {
              onCartTap?.call();
            },
          ),
        ],
      ),
    );
  }
}
