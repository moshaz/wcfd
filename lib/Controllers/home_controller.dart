
import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0;
  var lastTabIndex = 0;

  void changeTabIndex(int index) {
    lastTabIndex = tabIndex;
    tabIndex = index;
    update();
  }
}