import 'package:flutter/material.dart';
import 'package:to_do/constants/colours.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBg,
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            searchBox(),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
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
          Icon(
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
