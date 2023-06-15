import 'package:flutter/material.dart';
import 'package:to_do/constants/colours.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
        child: Text("Sample Text"),
      ),
    );
  }
}
