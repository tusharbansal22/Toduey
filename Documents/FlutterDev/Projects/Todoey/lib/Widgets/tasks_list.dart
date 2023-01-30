import 'package:flutter/material.dart';
import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:todoey/model/task.dart';


class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({required this.tasks});
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TasksTile(
        taskTitle: widget.tasks[index].name,
        isChecked: widget.tasks[index].isDone,
        checkboxCallback:(bool? checkboxState){
            setState((){
              widget.tasks[index].isDone=!widget.tasks[index].isDone;
            });},);
    },
    itemCount: widget.tasks.length,);
  }
}

