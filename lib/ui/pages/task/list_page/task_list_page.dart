import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectplanit/screens/sidedrawer.dart';

import '../../../../screens/calendar.dart';
import '../../../../screens/my_profile.dart';
import '../../../../screens/my_task.dart';
import '../../../../screens/side.dart';

class TaskListPage extends StatefulWidget {
  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  // 1. 상태
  int selectedIndex = 1;

  // 2. 행위, onTap보다 여기에 적는 것을 추천
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SideDrawer(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: selectedIndex, // 0번이 최초 화면, 화면 전환 시 숫자 변경
        children: [
          Side(),
          MyTask(),
          Calendar(),
          MyProfile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          // 위의 index: 랑 똑같이 설정해야 함
          onTap: (value) {
            // value가 현재 index?
            onClickBottomNavigation(value);
          },
          // 바텀 네비게이션 바 설정
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bars),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.doc_plaintext), label: "과제"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.calendar), label: "캘린더"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "내정보"),
          ]),
    );
  }
}