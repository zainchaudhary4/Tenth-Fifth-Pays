import 'package:flutter/material.dart';
import '../Utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String? hintText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    this.label,
    required this.controller,
    this.obscureText = false,
    this.hintText
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.77,
      child: TextField(
        controller: controller,
        cursorColor: AppPrimaryColor.primaryColor,
        keyboardType: TextInputType.emailAddress,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
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