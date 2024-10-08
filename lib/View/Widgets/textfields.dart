import 'package:flutter/material.dart';
import '../Utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType textInputType;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.obscureText = false,
    required this.textInputType
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.77,
      child: TextField(
        controller: controller,
        cursorColor: AppPrimaryColor.primaryColor,
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                  color: AppPrimaryColor.primaryColor,
                  width: 2
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1.5
              )
          ),

        ),

      ),
    );
  }
}