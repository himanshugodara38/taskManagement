import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/models/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddTask()
              : _buildTask(context, tasksList[index]),
        ));
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      dashPattern: [10,10],
      color: Colors.grey,
      strokeWidth: 3,
        child: Center(
      child: Text(
        "+ Add",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    ));
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: task.bgColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(
          task.iconData,
          color: task.iconColor,
          size: 35,
        ),
        SizedBox(
          height: 18,
        ),
        Text(
          task.title!,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            _buildTaskStatus(
                task.btnColor!, task.iconColor!, '${task.left} left'),
            SizedBox(width: 5),
            _buildTaskStatus(Color.fromARGB(250, 255, 255, 255),
                task.iconColor!, '${task.done} done'),
          ],
        )
      ]),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Text(text, style: TextStyle(color: txColor)),
    );
  }
}
