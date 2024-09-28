import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ContactsController extends GetxController{
  RxInt selectedButtonIndex = (-1).obs;
  TextEditingController fNameController = TextEditingController();
  TextEditingController lNameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController appPayAccController = TextEditingController();
  TextEditingController gPayAccController = TextEditingController();

}