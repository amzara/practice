import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:practice/screen/alertdialog.dart";
import "package:practice/screen/todo_tile.dart";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _controller = TextEditingController();

  List toDoList = [
    ["Make Tutorials", false],
    ["Do Exercise", false],
  ];

  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear;
    });
    Navigator.of(context).pop();
  }


  void CreateNewTask() {
    showDialog(
      context: context, 
      builder: (context) {
      return DialogBox(
        controller: _controller,
        onSave: saveNewTask,
        onCancel: () => Navigator.of(context).pop(),
      );
    }, 
    ); 
  }

  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });

  }

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      floatingActionButton: FloatingActionButton(
        onPressed: CreateNewTask,
        child: Icon(Icons.plus_one),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteFunction: (context) => deleteTask(index),

             );
        }
      )

    );
  }
}