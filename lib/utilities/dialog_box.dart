// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:to_do_app/utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  

  VoidCallback onSave;
  VoidCallback onCancel;
  final controller;


  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            TextField(

              controller: controller,
              decoration: const InputDecoration(border: OutlineInputBorder(), hintText: "Add a new task"),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
              MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 8),
              MyButton(text: "Cancel", onPressed: onCancel)
            ])

          ],
        ),),
    );
  }
}