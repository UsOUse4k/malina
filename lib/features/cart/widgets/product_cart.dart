import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/features/cart/widgets/product_widget.dart';
import 'package:malina/gen/assets.gen.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductWidget(
              category: "Bellagio Coffee",
              total: 3900,
              products: [
                Product(
                  imagePath: Assets.images.product1.path,
                  name: "Hadat Cosmetics",
                  description:
                      "Шампунь интенсивно\nвосстанавливающий Hydro\nIntensive Repair Shampoo 250 мл",
                  price: 1900,
                  quantity: 1,
                ),
                Product(
                  imagePath: Assets.images.product2.path,
                  name: "Hadat Cosmetics",
                  description: "Увлажняющий кондиционер\n150 мл",
                  price: 2000,
                  quantity: 1,
                ),
              ],
            ),
            const Gap(16),
            ProductWidget(
              category: "Preen Beauty",
              total: 600,
              products: [
                Product(
                  imagePath: Assets.images.product3.path,
                  name: "L’Oreal Paris\nElseve",
                  description: "Шампунь для\nослабленных волос",
                  price: 600,
                  quantity: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
