

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:max_way/app/app_pages.dart';
import 'package:max_way/app/app_routes.dart';
import 'package:max_way/core/utils/size_config.dart';

void main() {
  runApp( const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) ;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.categoryPage,
      getPages: AppPages.getPages,
    );
  }
}

