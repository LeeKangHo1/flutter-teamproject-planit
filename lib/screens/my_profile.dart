import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectplanit/components/sortby.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 카테고리 관리 화면
          Row(
            children: [
              Icon(CupertinoIcons.arrow_left),
              Text("카테고리 관리"),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  child: Center(child: Text("홈페이지에 표시되는 카테고리")),
                  color: Colors.lightBlue,
                ),
              ),
            ],
          ),
          // TODO: 이거 row로 바꿔야 겠다.
          ListTile(
            leading: Icon(
              CupertinoIcons.circle_fill,
              size: 12.0,
              color: Colors.blueAccent,
            ),
            title: Text("작업"),
            trailing: SizedBox(
              width: 40,
              child: Row(
                children: [
                  Text("0"),
                  Icon(CupertinoIcons.ellipsis_vertical),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Icon(CupertinoIcons.plus),
              Text("새로 만들기"),
            ],
          ),
          SizedBox(
            child: Center(child: Text("순서를 변경하려면 길게 누르고 드래그하세요.")),
          ),
          Divider(),
          Sortby(),
        ],
      ),
    );
  }
}
