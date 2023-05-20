import 'package:flutter/material.dart';
import 'package:todo_hive_flutter/utils/custom_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  final bool isEdit;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave,
      required this.isEdit});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            isEdit
                ? TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Edit task",
                    ),
                  )
                : TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Add a new task",
                    ),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(text: "Save", onPressed: onSave),
                const SizedBox(width: 8),
                CustomButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
