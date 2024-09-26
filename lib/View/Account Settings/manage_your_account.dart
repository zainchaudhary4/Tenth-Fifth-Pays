import 'package:flutter/material.dart';

class ManageYourAccount extends StatelessWidget{
  const ManageYourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("\nManage Your Account",  style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text("Update your personal information, "
              "preferences, and security settings "
              "for your Tenth Fifth Pays account.",  style: TextStyle(fontFamily: 'Arial', fontSize: 18,)),
        ],
    );
  }
}