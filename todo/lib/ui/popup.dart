import 'package:flutter/material.dart';
import 'package:todo/models/tasks.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Popup extends StatelessWidget {
  String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "New-Item",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.w500),
            ),
            TextField(
                cursorColor: Colors.lightBlueAccent,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Task',
                  fillColor: Colors.lightBlueAccent,
                ),
                onChanged: (newvalue) {
                  txt = newvalue;
                }),
            FlatButton(
                onPressed: () {
                  context.read<AllTasks>().addtask(txt);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
