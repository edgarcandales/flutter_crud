import 'package:flutter/material.dart';
import 'todo.dart'; 

Future<Todo?> createAlertDialog(BuildContext context) {
  TextEditingController customControllerTitle = TextEditingController();
  TextEditingController customControllerDescription = TextEditingController();

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add a new Todo"),
          content: Column(
            children: <Widget>[
              Text("Enter a title"),
              TextField(
                controller: customControllerTitle,
              ),
              Text("Enter a description"),
              TextField(
                controller: customControllerDescription,
              ),
            ],
          ),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text('Submit'),
              onPressed: () {
                Navigator.of(context).pop(
                  Todo(
                    id: DateTime.now().millisecondsSinceEpoch, // Unique id
                    title: customControllerTitle.text,
                    description: customControllerDescription.text,
                  ),
                );
              },
            )
          ],
        );
      });
}
