import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final bool isSuccess; // true for success, false for failure
  final String message;
  final String confirmText;
  final String cancelText;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const CustomAlertDialog({super.key,
    required this.isSuccess,
    required this.message,
    required this.onConfirm,
    required this.onCancel,
    required this.confirmText,
    required this.cancelText
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isSuccess ? Icons.check : Icons.warning, // Success or Failure icon
              size: 50,
              color: isSuccess ? Colors.green : Colors.red, // Green for success, Red for failure
            ),
            SizedBox(height: height*0.2),
            Text(
              isSuccess ? 'Success' : 'Alert',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: height*0.1),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: height*0.2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: onCancel,
              child: Text(
                confirmText,
                style: const TextStyle(
                  color: Colors.blue, // Blue text for cancel
                ),
              ),
            ),
            TextButton(
              onPressed: onConfirm,
              child: Text(
                cancelText,
                style: const TextStyle(
                  color: Colors.red, // Red text for confirm
                ),
              ),
            ),
          ],
        ),
          ],
        ),
      ),
    );
  }
}


// add inside a method
// showCustomDialog(context, false);

// add inside the controller class
// void showConfirmLogoutDialog(BuildContext context) {
// showDialog(
// context: context,
// builder: (BuildContext context) {
// return ConfirmLogoutDialog(
// message: 'Are you sure you want to Log out?',
// onConfirm: () {
// // Handle the "Delete" (confirm) action, e.g., logout the user
// Navigator.of(context).pop(); // Close the dialog
// // Add your logout logic here
// },
// onCancel: () {
// // Handle the "No, go back" (cancel) action
// Navigator.of(context).pop(); // Simply close the dialog
// },
// );
// },
// );
// }

