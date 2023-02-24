import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/screens/home/widgets/GoPremium.dart';
import 'package:task_management/screens/home/widgets/Tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              "Tasks",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
          ),
          Expanded(child: Tasks()),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          
        ),backgroundColor: Colors.black,
        onPressed: () {},
      child: Icon(Icons.add,size: 35,)
      ,),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10)
            ]),
        child: ClipRRect(
           borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              child: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Colors.blueAccent,
                backgroundColor: Colors.white,

                items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home_rounded,size: 30,)),
                BottomNavigationBarItem(
                  label: 'Person',
                  icon: Icon(Icons.person_rounded,size: 30,))
              ],),
        ));
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 10,
            ),
            height: 45,
            width: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset('assets/images/1.jpeg'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Hi Himanshu!",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          )
        ],
      ),
      actions: [
        Icon(
          Icons.more_vert,
          color: Colors.black,
          size: 40,
        )
      ],
    );
  }
}
