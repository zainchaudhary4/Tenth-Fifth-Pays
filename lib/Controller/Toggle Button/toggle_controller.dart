import 'package:get/get_core/get_core.dart';
import 'package:get/get.dart';

class ToggleController extends GetxController {
  var isToggled = false.obs;

  void toggleSwitch() {
    isToggled.value = !isToggled.value;
  }
}
