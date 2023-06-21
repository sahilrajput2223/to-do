import 'package:flutter/material.dart';
import 'package:to_do/constants/colours.dart';
import 'package:to_do/model/todo.dart';

class todoItem extends StatelessWidget {
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteItem;

  todoItem({
    Key? key,
    required this.toDo,
    required this.onToDoChanged,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        onTap: () {
          print("Todo List Clicked");
          onToDoChanged(toDo);
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: Icon(
          toDo.isDone! ? Icons.check_box : Icons.check_box_outline_blank,
          color: colorBlue,
        ),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
              fontSize: 18,
              color: colorBlack,
              decoration: toDo.isDone!
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: colorRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("Delete Clicked");
            },
          ),
        ),
      ),
    );
  }
}
