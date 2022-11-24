import 'package:get/get.dart';
import 'package:max_way/app/app_routes.dart';
import 'package:max_way/src/presentation/page/main/category_page.dart';
import 'package:max_way/src/presentation/page/splash/splash_page.dart';

class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.splashPage, page: () => SplashPage()),
    GetPage(name: AppRoutes.categoryPage, page: () => CategoryPage()),
  ];
}
