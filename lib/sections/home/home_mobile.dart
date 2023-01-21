import 'package:demirli_tech_website/sections/home/widget/home_base.dart';
import 'package:demirli_tech_website/sections/home/widget/home_title.dart';
import 'package:demirli_tech_website/sections/home/widget/home_vision_categories.dart';
import 'package:flutter/material.dart';

import '../../configs/app_text_style.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTitle(
            titleWidthFactor: 1.0,
          ),
          Expanded(
            child: HomeVisionCategories(
              radius: 32,
              style: AppTextStyle.b2!.copyWith(color: Colors.white),
            )
          )
        ]
      )
    );          
  }
}
