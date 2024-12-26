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
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                    bottom: 0,
                  ),
                  child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(todoList[index][0],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))));
            }));
  }
}
