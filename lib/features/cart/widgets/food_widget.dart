import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_shadows.dart';
import 'package:malina/features/cart/widgets/additives_button.dart';
import 'package:malina/features/cart/widgets/item_widget.dart';
import 'package:malina/features/cart/widgets/order_button.dart';
import 'package:malina/gen/assets.gen.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20).copyWith(top: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [AppShadows.common],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Bellagio Coffee",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF5F5F5F),
                ),
              ),
              const Gap(7.57),
              SvgPicture.asset(Assets.icons.forward.path),
            ],
          ),
          const Gap(6.5),
          const Divider(
            height: 0,
            color: Color(0xFFEDEBEB),
          ),
          const Gap(12),
          ItemWidget(
            imagePath: Assets.images.food1.path,
            name: "Том ям",
            description: "Пицца с соусом том ям\n230 гр",
            price: 250,
            quantity: 1,
          ),
          const Gap(16),
          AdditivesButton(
            onTap: () {},
          ),
          const Gap(20),
          OrderButton(
            total: 250,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
