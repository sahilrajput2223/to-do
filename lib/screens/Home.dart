import 'package:flutter/material.dart';
import 'package:to_do/constants/colours.dart';
import 'package:to_do/model/todo.dart';
import 'package:to_do/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final todoListData = ToDo.todoList();
    return Scaffold(
      backgroundColor: colorBg,
      appBar: buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 25),
                        child: const Text(
                          "All ToDos",
                          style: TextStyle(
                              color: colorBlack,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      for (ToDo i in todoListData)
                        todoItem(
                          toDo: i,
                        )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: colorBlack),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 30),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: colorGrey),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: colorBg,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: colorBlack,
            size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: Image.asset('assets/images/todo.png'),
          )
        ],
      ),
    );
  }
}
