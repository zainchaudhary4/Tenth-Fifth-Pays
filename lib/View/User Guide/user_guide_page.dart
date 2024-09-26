import 'package:flutter/material.dart';

class UserGuidePage extends StatelessWidget{
  const UserGuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("\nUser Guide\n", style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold, fontSize: 24),),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("1.) Setup/Edit Profile \nUser Information \nPayment Method \n\n2.) Account Settings \n\n3.) Contacts"
                      "\nAdding Contacts \nMaking Favorites \nImages \n\n4.) Home Screen \nFunding Account \nSelect Recipients"
                      "\nMaking Payments \n\n5.) Notifications \nRecipients \nFor Senders \n\n6.) Other Information \nTransaction History"
                      "\nFAQs \nRefer a Friend", style: TextStyle(fontFamily: 'Arial', fontSize: 18),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}