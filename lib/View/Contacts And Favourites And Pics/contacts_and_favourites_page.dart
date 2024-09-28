import 'package:flutter/material.dart';
import 'package:tenth_fifth_pays/View/Contacts%20And%20Favourites%20And%20Pics/add_new_contact.dart';
import 'package:tenth_fifth_pays/View/Contacts%20And%20Favourites%20And%20Pics/save_favourite_contacts.dart';


class ContactsAndFavouritesPage extends StatelessWidget{
  const ContactsAndFavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
      child:Padding(
        padding:EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SaveFavouriteContacts(),
              AddNewContact(),
            ],
          ),
        ),
      ),
     ),
    );
  }
}