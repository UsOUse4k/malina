import 'package:flutter/material.dart';

class NewItem {
  final Color color;
  final String text;

  NewItem({
    required this.color,
    required this.text,
  });
}

class NewItems extends StatelessWidget {
  const NewItems({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewItem> newItems = [
      NewItem(
        color: const Color(0xFFD4E5FF),
        text: "Вакансии",
      ),
      NewItem(
        color: const Color(0xFFFFD3BA),
        text: "Маркет",
      ),
      NewItem(
        color: const Color(0xFFFFDEDE),
        text: "Цветы",
      ),
      NewItem(
        color: const Color(0xFFCFF2E3),
        text: "Cпорт",
      ),
      NewItem(
        color: const Color(0xFFBDE1D1),
        text: "Маркет",
      ),
      NewItem(
        color: const Color(0xFFD9D9D9),
        text: "",
      ),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
      ),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            newItems.length,
            (index) {
              final newItem = newItems[index];

              return Container(
                width: 86,
                height: 86,
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(bottom: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: newItem.color,
                ),
                child: Text(
                  newItem.text,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF121212),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
