import 'package:flutter/material.dart';

class ManageYourAccount extends StatelessWidget{
  const ManageYourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Manage Your Account",  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("Update your personal information, "
                  "preferences, and security settings "
                  "for your Tenth Fifth Pays account.",  style: TextStyle(fontSize: 18,)),
            ],
          ),
        ),
      ),
    );
  }
}