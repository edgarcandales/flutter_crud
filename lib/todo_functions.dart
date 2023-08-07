import 'package:flutter/material.dart';

void editTodoItem(BuildContext context, String initialText, Function(String) onSubmitted) {
  final controller = TextEditingController(text: initialText);
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Edit Todo Item'),
        content: TextField(
          controller: controller,
          onSubmitted: onSubmitted,
        ),
        actions: [
          TextButton(
            child: Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
            child: Text('Save'),
            onPressed: () {
              onSubmitted(controller.text);
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
