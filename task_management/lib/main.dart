import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/screens/home/log_in_page.dart';
import 'package:task_management/screens/home/home.dart';
import 'package:task_management/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Management App', 
      
    routes: {
        "/": (context) => Log_in_page(),
        MyRoutes.homeRoute: (context) => HomePage()
      },
     
      
    );
  }
}
