import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List todoList = [
    ["learn flutter", false],
    ["drink coffee", false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
            title: const Text("Simple Todo"),
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white),
        body: ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                  child: Text(
                todoList[index][0],
              ));
            }));
  }
}
