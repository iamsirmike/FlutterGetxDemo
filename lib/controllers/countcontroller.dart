import 'package:get/get.dart';

class CountController extends GetxController {
  int val = 0;

  increment() {
    val++;
    update();
  }

  reset() {
    val = 0;
    update();
  }
}
