import 'package:flutter/material.dart';
import 'package:max_way/app/app_color.dart';
import 'package:max_way/app/app_images.dart';
import 'package:max_way/core/utils/size_config.dart';

class FoodItemWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FoodItemWidgetState();
  }
}

class FoodItemWidgetState extends State<FoodItemWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: SizeConfig.calculateBlockVertical(222),
        width: SizeConfig.calculateBlockHorizontal(170),
        decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: AppColors.lightGrey10,
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                height: SizeConfig.calculateBlockVertical(124),
                width: double.infinity,
                child: Container(
                  height: SizeConfig.calculateBlockVertical(100),
                  width: SizeConfig.calculateBlockHorizontal(106),
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppImages.hamburger)),
                  ),
                  child: Image.asset(AppImages.hamburger),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(16),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, right: 8),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Макс Бургер',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(14),
            ),
            counter != 0 ? getCounter() : getPrice()
          ],
        ),
      ),
    );
  }

  Widget getPrice() {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: InkWell(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: SizeConfig.calculateBlockVertical(40),
              decoration: const BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: const Text('25 000 сум')),
        ));
  }

  Widget getCounter() {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  counter--;
                });
              },
              child: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.calculateBlockHorizontal(40),
                  height: SizeConfig.calculateBlockVertical(40),
                  decoration: const BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const Text('-')),
            ),
            SizedBox(
              width: SizeConfig.calculateBlockVertical(33),
            ),
            Text(
              "$counter",
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black45),
            ),
            SizedBox(
              width: SizeConfig.calculateBlockVertical(33),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
              },
              child: Container(
                  alignment: Alignment.center,
                  width: SizeConfig.calculateBlockHorizontal(40),
                  height: SizeConfig.calculateBlockVertical(40),
                  decoration: const BoxDecoration(
                      color: AppColors.lightGrey,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: const Text('+')),
            ),
          ],
        ));
  }
}
