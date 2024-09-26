import 'package:flutter/material.dart';

class UserGuidePage extends StatelessWidget{
  const UserGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(4),
          child: Column(
            children: [
              Text("User Guide", style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold, fontSize: 24),),
              Text("1.) Setup/Edit Profile \nUser Information \nPayment Method \n2.) Account Settings \n3.) Contacts"
                  "\nAdding Contacts \nMaking Favorites \nImages \n4.) Home Screen \nFunding Account \nSelect Recipients"
                  "\nMaking Payments \n5.) Notifications \nRecipients \nFor Senders \n6.) Other Information \nTransaction History"
                  "\nFAQs \nRefer a Friend", style: TextStyle(fontFamily: 'Arial', fontSize: 18),),
            ],
          ),
        ),
      ),
    );
  }
}