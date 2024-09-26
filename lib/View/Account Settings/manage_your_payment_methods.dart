import 'package:flutter/material.dart';

class ManageYourPaymentMethods extends StatelessWidget{
  const ManageYourPaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              const Text("Manage Your Payment Methods with Ease",  style: TextStyle(fontFamily: 'Arial', fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5,),
              const Text("In the Account Settings section, you can "
                  "easily add, edit, and remove your credit/debit "
                  "cards for hassle-free payments.",  style: TextStyle(fontFamily: 'Arial', fontSize: 18)),
              bulletItem("Add New Card"),
              bulletItem("Edit Card Details"),
              bulletItem("Remove Card"),
            ],
          ),
        ),
      ),
    );
  }
  Widget bulletItem(String text) {
    return ListTile(
      leading: const Text("•", style: TextStyle(fontSize: 24)), // Bullet point
      title: Text(text, style: const TextStyle(fontFamily: 'Arial', fontSize: 18)),
    );
  }
}
