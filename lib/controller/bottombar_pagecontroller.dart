

import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var tabindex = 0;
  void changeTabindex(int index) {
    tabindex = index;
    update();
  }
}
