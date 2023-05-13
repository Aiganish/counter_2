import 'package:get/get.dart';

class FirstController extends GetxController {
  Rx<int> number = 0.obs;
  RxInt count = 0.obs;

  String text = 'Men konstructorgo baram';

  void kemit() => number.value = number.value - 1;

  void kosh() {
    number.value++;
  }
}
