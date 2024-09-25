import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isToggled = false.obs;

  void toggleSwitch() {
    isToggled.value = !isToggled.value;
  }
}
