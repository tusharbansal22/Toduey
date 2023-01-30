import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({Key? key}) : super(key: key);

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: (value){
        setState((){
          isChecked=!isChecked;
        });

      },
    );
  }
}
