import 'package:flutter/material.dart';

import '../widgets/checkbox.dart';
import '../widgets/expansion_panel_list.dart';
import '../widgets/round_border_text.dart';

// This is the type used by the popup menu below.
enum SampleItem { itemOne, itemTwo, itemThree }

class MyTask extends StatefulWidget {
  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  SampleItem? selectedItem;

  final categories = [
    "카테고리1",
    "카테고리2",
    "카테고리3",
    "카테고리4",
    "카테고리5",
    "카테고리6",
    "카테고리7",
    "카테고리8",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              // 수평 스크롤 카테고리
              Expanded(
                child: SizedBox(
                  height: 66,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: RoundBorderText(
                          title: categories[index],
                          position: index,
                        ),
                      );
                    },
                  ),
                ),
              ),
              // 점 3개 팝업 메뉴
              PopupMenuButton<SampleItem>(
                initialValue: selectedItem,
                onSelected: (SampleItem item) {
                  setState(() {
                    selectedItem = item;
                  });
                },
                itemBuilder: (BuildContext context) =>
                    <PopupMenuEntry<SampleItem>>[
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemOne,
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemTwo,
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<SampleItem>(
                    value: SampleItem.itemThree,
                    child: Text('Item 3'),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          // 작업 하나 패널
          Container(
            width: 500,
            child: InkWell(
              onTap: () {
                print("클릭됨");
              },
              child: ListTile(
                // 체크 되는 동그란 버튼
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
                trailing: Icon(Icons.flag_outlined),
              ),
            ),
          ),
          Divider(),
          // 확장 패널
          ExpansionPanelListExample(),
          Divider(),
          Center(child: Text("완료된 모든 작업 확인")),
        ],
      ),
    );
  }
}
