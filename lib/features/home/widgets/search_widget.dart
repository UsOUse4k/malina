import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:gap/gap.dart';
import 'package:malina/core/constants/app_shadows.dart';
import 'package:malina/gen/assets.gen.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [AppShadows.common],
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 22,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.icons.search.path,
          ),
          const Gap(11),
          const Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Искать в Malina",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF828282),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
