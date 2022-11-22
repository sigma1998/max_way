import 'package:get/get.dart';
import 'package:max_way/app/app_routes.dart';
import 'package:max_way/src/presentation/page/main_pages/main_page.dart';

class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.MainPage, page: () => MainPage()),
  ];
}