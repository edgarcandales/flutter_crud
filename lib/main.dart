import 'package:flutter/material.dart';
import 'todo.dart'; // Make sure to import your Todo class

void main() {
  runApp(MaterialApp(
    home: TodoList(),
  ));
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<Todo> todos = [
    // Add some example todos
    Todo(id: 1, title: 'Todo 1', description: 'This is the first todo'),
    Todo(id: 2, title: 'Todo 2', description: 'This is the second todo'),
    // Add more todos here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            subtitle: Text(todos[index].description),
            trailing: Checkbox(
              value: todos[index].isDone,
              onChanged: (bool? value) {
                setState(() {
                  todos[index].isDone = value!;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}
