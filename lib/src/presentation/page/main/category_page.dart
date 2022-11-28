import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:max_way/app/app_color.dart';
import 'package:max_way/app/app_images.dart';
import 'package:max_way/core/utils/size_config.dart';
import 'package:max_way/src/presentation/page/main/widget/food_item.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        title: getTitle(),
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Column(
          children: [
            // SizedBox(
            //     width: double.infinity,
            //     height: SizeConfig.calculateBlockVertical(60),
            //     child: TabBarView(children: getTabChildren())),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(16),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Рекомендуем',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(8),
            ),
            getRecommendations(),
            SizedBox(
              height: SizeConfig.calculateBlockVertical(12),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Бургеры',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
              ),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              child: getGridItems(),
            ))
          ],
        ),
      ),
    );
  }

  getTitle() {
    return Container(
      width: double.infinity,
      height: SizeConfig.calculateBlockVertical(40),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: AppColors.background),
      child: Row(
        children: [
          SizedBox(
            width: SizeConfig.calculateBlockHorizontal(15),
          ),
          SizedBox(
              height: SizeConfig.calculateBlockVertical(20),
              width: SizeConfig.calculateBlockHorizontal(20),
              child: Image.asset(AppImages.search)),
          SizedBox(
            width: SizeConfig.calculateBlockHorizontal(15),
          ),
          // TextField()
        ],
      ),
    );
  }

  getTabChildren() {
    List list = ['Бургеры', 'Сендвич', 'Лаваш', 'Картошка фри'];

    return list.map((e) {
      return Container(
        height: SizeConfig.calculateBlockVertical(36),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: AppColors.white),
        child: Text(
          '$e',
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
        ),
      );
    }).toList();
  }

  getRecommendations() {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.calculateBlockVertical(88),
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              height: SizeConfig.calculateBlockVertical(88),
              width: SizeConfig.calculateBlockHorizontal(113),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  image: DecorationImage(
                      image: AssetImage(AppImages.recImageFirst))),
            );
          }),
    );
  }

  getGridItems() {
    return Expanded(
      child: GridView.count(crossAxisCount: 2, children: [
        ...List.generate(15, (index) {
          return FoodItemWidget();
        })
      ]),
    );
  }
}
