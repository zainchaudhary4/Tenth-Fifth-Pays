import 'package:flutter/material.dart';

class ManageYourConnectedAccounts extends StatelessWidget{
  const ManageYourConnectedAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(4),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Manage Your Connected Accounts Easily", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 5,),
                Text("Connect or disconnect third-party accounts like Google or "
                    "Apple for easier login and account management. Stay in "
                    "control of your connected accounts.", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }

}