import "package:flutter/material.dart";
import "package:flutter_slidable/flutter_slidable.dart";

class TodoTile extends StatelessWidget {
final String taskName;
final bool taskCompleted;
Function(bool?)? onChanged;
Function(BuildContext)? deleteFunction;


TodoTile({
super.key,
required this.taskName,
required this.taskCompleted,
required this.onChanged,
required this.deleteFunction,

});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,)
              

            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
               Checkbox(value: taskCompleted, onChanged: onChanged),
              Text(
                taskName,
                style: TextStyle(decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none),
                ),
              ],
            ),   
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.yellowAccent,
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}