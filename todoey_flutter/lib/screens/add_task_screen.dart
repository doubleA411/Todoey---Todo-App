import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newtaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0).copyWith(top:0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text("Add Task",
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25.0
                ),),
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                newtaskTitle=newText;
              },
            ),
            SizedBox(height: 20.0,),
            FlatButton(onPressed: (){
              
              Provider.of<TaskData>(context,listen: false).addTasks(newtaskTitle);
              Navigator.pop(context);
            }, 
            child: Text("Add",
            style: TextStyle(color:Colors.white,),),
            color: Colors.lightBlueAccent,)

          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
        ),
      ),
    );
  }
}