import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:max_way/app/app_color.dart';

import '../../../../app/app_images.dart';
import '../../../../core/utils/size_config.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          color: AppColors.splashColor,
          width: SizeConfig.calculateBlockHorizontal(375),
          height: SizeConfig.calculateBlockVertical(812),
          child: SizedBox(
            height: SizeConfig.calculateBlockVertical(160),
            width: SizeConfig.calculateBlockHorizontal(160),
            child: Center(
              child: Image.asset(AppImages.logoMaxWay),
            ),
          ),
        ),
      ),

    );
  }

}