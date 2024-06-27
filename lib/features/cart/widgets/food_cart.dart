import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart'
    hide SegmentedButton, SegmentedButtonState;
import 'package:gap/gap.dart';
import 'package:malina/features/cart/widgets/food_widget.dart';
import 'package:malina/features/cart/widgets/segmented_button.dart';

enum FoodCartState {
  delivery,
  establishment,
}

class FoodCart extends StatefulWidget {
  const FoodCart({super.key});

  @override
  State<FoodCart> createState() => _FoodCartState();
}

class _FoodCartState extends State<FoodCart> {
  FoodCartState state = FoodCartState.delivery;

  late final PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: SegmentedButton(
                  text: "Доставка",
                  state: switch (state) {
                    FoodCartState.delivery => SegmentedButtonState.pressed,
                    _ => SegmentedButtonState.idle,
                  },
                  onTap: () {
                    changePage(FoodCartState.delivery);
                  },
                ),
              ),
              const Gap(16),
              Expanded(
                child: SegmentedButton(
                  text: "В заведении",
                  state: switch (state) {
                    FoodCartState.establishment => SegmentedButtonState.pressed,
                    _ => SegmentedButtonState.idle,
                  },
                  onTap: () {
                    changePage(FoodCartState.establishment);
                  },
                ),
              ),
            ],
          ),
        ),
        const Gap(20),
        ExpandablePageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: controller,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FoodWidget(),
            ),
            SizedBox.shrink(),
          ],
        ),
      ],
    );
  }

  void changePage(FoodCartState targetState) {
    state = targetState;
    controller.animateToPage(
      switch (state) {
        FoodCartState.delivery => 0,
        FoodCartState.establishment => 1,
      },
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    setState(() {});
  }
}
