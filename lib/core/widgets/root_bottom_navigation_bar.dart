import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:malina/core/router/routes.dart';
import 'package:malina/core/widgets/category_button.dart';
import 'package:malina/core/widgets/root_bottom_navigation_bar_item.dart';
import 'package:malina/core/widgets/cart_panel.dart';
import 'package:malina/features/cart/pages/cart_page.dart';
import 'package:malina/gen/assets.gen.dart';

class RootBottomNavigationBar extends StatefulWidget {
  const RootBottomNavigationBar({super.key});

  @override
  State<RootBottomNavigationBar> createState() =>
      _RootBottomNavigationBarState();
}

class _RootBottomNavigationBarState extends State<RootBottomNavigationBar> {
  bool isPanelOpened = false;

  bool get isHomeLocation =>
      GoRouterState.of(context).uri.path == const HomeRoute().location;

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).padding.bottom;

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 70 + bottom,
            padding: const EdgeInsets.symmetric(horizontal: 11).copyWith(
              top: 5,
              bottom: bottom,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(15, 0),
                  blurRadius: 30,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      RootBottomNavigationBarItem(
                        path: Assets.icons.tape.path,
                        label: "Лента",
                      ),
                      const Spacer(),
                      RootBottomNavigationBarItem(
                        path: Assets.icons.favorites.path,
                        label: "Избранное",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: CategoryButton(
                    isAlternative: !isHomeLocation,
                    onTap: () {},
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      RootBottomNavigationBarItem(
                        path: Assets.icons.profile.path,
                        label: "Профиль",
                      ),
                      const Spacer(),
                      RootBottomNavigationBarItem(
                        path: Assets.icons.cart.path,
                        label: "Корзина",
                        isSelected: true,
                        onTap: () {
                          isPanelOpened = true;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 6,
          bottom: bottom + 1.5,
          child: Visibility(
            visible: isPanelOpened,
            child: CartPanel(
              onFoodTap: () {
                const CartRoute(CartType.food).go(context);
                closePanel();
              },
              onGoodsTap: () {
                const CartRoute(CartType.goods).go(context);
                closePanel();
              },
              onCartTap: () {
                closePanel();
              },
            ),
          ),
        ),
      ],
    );
  }

  void closePanel() {
    isPanelOpened = false;
    setState(() {});
  }
}
