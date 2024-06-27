import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_shadows.dart';
import 'package:malina/features/cart/widgets/item_widget.dart';
import 'package:malina/features/cart/widgets/order_button.dart';
import 'package:malina/gen/assets.gen.dart';

class Product {
  final String imagePath;
  final String name;
  final String description;
  final int price;
  final int quantity;

  Product({
    required this.imagePath,
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
  });
}

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.category,
    required this.products,
    required this.total,
  });

  final String category;
  final int total;
  final List<Product> products;

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
              Text(
                category,
                style: const TextStyle(
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
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return ItemWidget(
                imagePath: product.imagePath,
                name: product.name,
                description: product.description,
                price: product.price,
                quantity: product.quantity,
              );
            },
            separatorBuilder: (context, index) {
              return const Gap(20);
            },
          ),
          const Gap(20),
          OrderButton(
            total: total,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
