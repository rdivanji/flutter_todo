import 'package:flutter/material.dart';
import 'todo.dart';

class NewTodoDialog extends StatelessWidget{
  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("New Todo"),
      content: TextField(
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("Cancel"),
          onPressed: (){
            controller.clear();
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text("Add"),
          onPressed: (){
            final todo = new Todo(title: controller.value.text);
            controller.clear();
            Navigator.of(context).pop(todo); //Don't really understand this
          },
        )
      ],
    );
  }
}