import 'package:get/get.dart';
import 'package:wcfd/Controllers/home_controller.dart';

class AppNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}