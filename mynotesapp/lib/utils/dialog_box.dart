import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mynotesapp/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
VoidCallback onSave;
VoidCallback onCancel;


 DialogBox({
  super.key, 
  required this.controller, 
  required this.onSave, required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow,
        content: Container(
          height: 120,
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Add new task",
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                //save button
                  MyButton(text: "Save Button", onPressed: onSave),
                  const SizedBox(width: 4),
                //cancel button
                  MyButton(text: "Cancel", onPressed: onCancel),

              ],)
            ],
          ),
        ));
  }
}
