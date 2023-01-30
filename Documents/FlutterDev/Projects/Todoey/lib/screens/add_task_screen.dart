import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {

  final Function AddTaskCallback;
  AddTasksScreen(this.AddTaskCallback);
  Color buttonColor =Colors.lightBlueAccent;
  String newTaskTitle='';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child:Text('Add Task',style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0
              ),) ,
            ),

            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val){
                newTaskTitle=val;
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)
              ),
                onPressed: (){
                this.AddTaskCallback(newTaskTitle);
                },
                child: Text('Add'))
          ],
        ),
      ),
    );
  }
}
