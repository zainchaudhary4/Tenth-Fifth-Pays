import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Controller/Toggle Button/toggle_controller.dart';

class CustomToggleButton extends StatelessWidget {
  final ToggleController toggleController = Get.put(ToggleController());

  CustomToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleController.toggleSwitch(); // Toggling the button
      },
      child: Obx(() => Container(
        width: 60,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: toggleController.isToggled.value
              ? Colors.grey.shade200
              : Colors.grey.shade300, // Background color change
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 200),
          alignment: toggleController.isToggled.value
              ? Alignment.centerRight
              : Alignment.centerLeft, // Move the circle
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: toggleController.isToggled.value
                  ? Colors.indigo.shade300
                  : Colors.red, // Circle color change
            ),
          ),
        ),
      )),
    );
  }
}
