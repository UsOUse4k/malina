import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:malina/core/router/routes.dart';
import 'package:malina/features/home/widgets/new_items.dart';
import 'package:malina/features/home/widgets/panel.dart';
import 'package:malina/features/home/widgets/qr_code_scanner_panel.dart';
import 'package:malina/features/home/widgets/search_widget.dart';
import 'package:malina/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                const Gap(12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SearchWidget(),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Gap(14),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              QrCodeScannerPanel(
                                onTap: () {
                                  const QRCodeScannerRoute().push(context);
                                },
                              ),
                              const Gap(20),
                              Panel(
                                title: "Еда",
                                subtitle: "Из кафе и\nресторанов",
                                imagePath: Assets.images.food.path,
                              ),
                              const Gap(20),
                              Panel(
                                title: "Бьюти",
                                subtitle: "Салоны красоты\nи товары",
                                imagePath: Assets.images.beauty.path,
                              ),
                            ],
                          ),
                        ),
                        const Gap(30),
                        const Row(
                          children: [
                            Gap(20),
                            Text(
                              "Скоро в Malina",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        const NewItems(),
                        const Gap(32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
