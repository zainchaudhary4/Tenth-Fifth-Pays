import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Utils/app_logo.dart';

class LogoAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: AppLogo.logo,
      ),
    );
  }
}