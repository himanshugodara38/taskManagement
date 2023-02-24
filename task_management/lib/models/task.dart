import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? btnColor;
  Color? iconColor;
  num? left;
  num? done;
  bool isLast;

  Task(
      {this.bgColor,
      this.btnColor,
      this.done,
      this.iconColor,
      this.iconData,
      this.isLast = false,
      this.left,
      this.title});

  static List<Task> generateTasks() {
    return [Task(
      iconData: Icons.person_rounded,
      iconColor: Color.fromARGB(255, 146, 34, 215),
      title: "Personal",
      bgColor: Color.fromARGB(255, 213, 165, 235),
      btnColor: Color.fromARGB(228, 79, 194, 98),
      left: 3,
      done: 1,
    ),

    Task(
        iconData: Icons.cases_rounded,
        iconColor: Color.fromARGB(255, 204, 61, 0),
        title: "Office",
        bgColor: Color.fromARGB(255, 255, 177, 138),
        btnColor: Color.fromARGB(215, 179, 117, 207),
        left: 2,
        done: 8,
      ),

      Task(
        iconData: Icons.favorite_rounded,
        iconColor: Color.fromARGB(255, 15, 164, 1),
        title: "Fitness",
        bgColor: Color.fromARGB(255, 128, 247, 128),
        btnColor: Color.fromARGB(239, 239, 183, 85),
        left: 1,
        done: 3,
      ),
    Task(isLast: true)
    ];
  }
}
