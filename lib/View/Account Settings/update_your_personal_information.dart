import 'package:flutter/material.dart';

class UpdateYourPersonalInformation extends StatelessWidget{
  const UpdateYourPersonalInformation({super.key});

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
              Text("Update Your Personal Information "
                  "with Ease",  style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("In the Profile Settings section, you can easily update your "
                  "personal information, including your name, last name, email, "
                  "and phone number.", style: TextStyle(fontFamily: 'Arial', fontSize: 18),)
            ],
          ),
        ),
      ),
    );
  }

}