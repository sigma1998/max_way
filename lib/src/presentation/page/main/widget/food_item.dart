import 'package:flutter/material.dart';
import 'package:max_way/app/app_color.dart';
import 'package:max_way/app/app_images.dart';
import 'package:max_way/core/utils/size_config.dart';

class FoodItemWidget extends StatelessWidget {
  const FoodItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.calculateBlockVertical(222),
      width: SizeConfig.calculateBlockHorizontal(170),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: PhysicalModel(
        color: Colors.white,
        elevation: 1,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              height: SizeConfig.calculateBlockVertical(124),
              width: double.infinity,
              child: SizedBox(
                height: SizeConfig.calculateBlockVertical(100),
                width: SizeConfig.calculateBlockHorizontal(106),
                child: Image.asset(AppImages.hamburger),
              ),
            ),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(16),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Макс Бургер',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(14),
            ),
            Container(
              height: SizeConfig.calculateBlockVertical(40),
              width: SizeConfig.calculateBlockHorizontal(154),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Text(
                '25 000 сум',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
