import 'package:flutter/material.dart';
import 'package:projectplanit/components/checkbox.dart';

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("MyTaskScreen"),
          InkWell(
            onTap: () {
              print("클릭됨");
            },
            child: ListTile(
              leading: CheckboxExample(),
              title: Text(
                "영어 단어 10개 외우기",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Text("01-05"),
                  Icon(Icons.alarm),
                ],
              ),
              trailing: Icon(Icons.flag),
            ),
          ),
          Text("완료된 모든 작업 확인")
        ],
      ),
    );
  }
}
