import 'package:flutter/material.dart';
import 'package:to_do/constants/colours.dart';

class todoItem extends StatelessWidget {
  const todoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {
          print("Todo List Clicked");
        },
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: colorBlue,
        ),
        title: const Text(
          'Check Mail',
          style: TextStyle(
              fontSize: 18,
              color: colorBlack,
              decoration: TextDecoration.lineThrough),
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
            icon: const Icon(Icons.delete),
            onPressed: () {
              print("Delete Clicked");
            },
          ),
        ),
      ),
    );
  }
}
