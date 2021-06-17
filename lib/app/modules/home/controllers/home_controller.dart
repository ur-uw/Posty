import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt _feedViewIndex = 0.obs;
  int get feedViewIndex => _feedViewIndex.value;
  set setFeedViewIndex(int value) {
    _feedViewIndex.value = value;
  }
}
