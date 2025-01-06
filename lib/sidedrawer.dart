import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // side bar 내용을 레이어 하나 더 올리는 것
      endDrawer: Container(
        width: 400,
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
            Row(
              children: [
                Icon(CupertinoIcons.rectangle_grid_2x2_fill),
                Text("범주"),
              ],
            ),
            Row(
              children: [
                Icon(CupertinoIcons.plus),
                Text("새로 만들기"),
              ],
            ),
            Row(
              children: [
                Icon(CupertinoIcons.gear),
                Text("비밀번호 변경"),
              ],
            ),
            Row(
              children: [
                Icon(CupertinoIcons.square_arrow_left),
                Text("로그아웃"),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Placeholder(),
    );
  }
}
