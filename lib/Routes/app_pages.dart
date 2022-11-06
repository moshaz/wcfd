import 'package:get/get.dart';
import 'package:wcfd/Views/app_nav_binding.dart';
import 'package:wcfd/Views/app_nav.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.APPNAV,
      page: () => AppNav(),
      binding: AppNavBinding(),
    ),
  ];
}
