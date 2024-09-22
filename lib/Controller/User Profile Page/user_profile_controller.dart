import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class UserProfileController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController phonenumController = TextEditingController();
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController dayController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController zipController = TextEditingController();
  TextEditingController currencyController = TextEditingController();
  TextEditingController accNameController = TextEditingController();
  TextEditingController accNumController = TextEditingController();
  TextEditingController expDateController = TextEditingController();








// var isLoading = false.obs;
//
// bool _validateFields() {
//   if (nameController.text.isEmpty ||
//       emailController.text.isEmpty ||
//       passwordController.text.isEmpty) {
//     Fluttertoast.showToast(
//       msg: "Please fill all the fields",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//     );
//     return false;
//   }
//   return true;
// }
//
// bool _validateName(String value) {
//   if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
//     Fluttertoast.showToast(
//       msg: "Invalid name",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//     );
//     return false;
//   }
//   return true;
// }
//
// bool _validatePassword(String value) {
//   if (value.length < 8) {
//     Fluttertoast.showToast(
//       msg: "Password should be at least 8 characters long",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//     );
//     return false;
//   }
//   return true;
// }
//
// bool _validateEmail(String value) {
//   if (!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(value)) {
//     Fluttertoast.showToast(
//       msg: "Invalid email address",
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM,
//       backgroundColor: Colors.red,
//       textColor: Colors.white,
//     );
//     return false;
//   }
//   return true;
// }
//
// bool validateFields() {
//   if (_validateFields() &&
//       _validateName(nameController.text) &&
//       _validatePassword(passwordController.text) &&
//       _validateEmail(emailController.text)) {
//     return true;
//   }
//   return false;
// }
//
// Future<void> signUp() async {
//   if (validateFields()) {
//     isLoading.value = true;
//     try {
//       final response = await ApiService.signUp(
//         nameController.text,
//         emailController.text,
//         passwordController.text,
//       );
//
//       isLoading.value = false;
//
//       if (response == null) {
//         Fluttertoast.showToast(
//           msg: "Failed to sign up. Please try again later.",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//         );
//         return;
//       }
//
//       if (response['response'] != null && response['response']['status'] == "200") {
//         log(response['response']['result']['message']);
//         Fluttertoast.showToast(
//           msg: response['response']['result']['message'],
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//         );
//
//         Get.to(() => VerifyOTP(
//           email: emailController.text,
//           userID: response['response']['result']['user_id'],
//         ));
//       } else if (response['error'] != null && response['error']['status'] == "300") {
//         Fluttertoast.showToast(
//           msg: response['error']['message'],
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//         );
//       } else {
//         print('Signup failed');
//         Fluttertoast.showToast(
//           msg: "Signup failed",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//         );
//       }
//     } catch (e) {
//       isLoading.value = false;
//       print('Exception: $e');
//       Fluttertoast.showToast(
//         msg: e.toString(),
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: Colors.red,
//         textColor: Colors.white,
//       );
//     }
//   }
// }
// void onGoogleButtonClick(){
//   Fluttertoast.showToast(
//     msg: 'Coming soon',
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//   );
// }
// void onFacebookButtonClick(){
//   Fluttertoast.showToast(
//     msg: 'Coming soon',
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.BOTTOM,
//     backgroundColor: Colors.red,
//     textColor: Colors.white,
//   );
// }
}