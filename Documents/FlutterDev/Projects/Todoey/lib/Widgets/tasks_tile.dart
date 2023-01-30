import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  bool isChecked=false;
  final String taskTitle;
  final  void Function(bool?) checkboxCallback;
  TasksTile({this.isChecked=false, required this.taskTitle,required this.checkboxCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,style: TextStyle(decoration: isChecked?TextDecoration.lineThrough:null),),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}



