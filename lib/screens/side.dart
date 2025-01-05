import 'package:flutter/material.dart';
import 'package:projectplanit/Components/round_border_text.dart';

// 과제 없을 때 화면 임시로 여기에
class Side extends StatelessWidget {
  final searchKeword = [
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
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 66,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: searchKeword.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: RoundBorderText(
                          title: searchKeword[index], position: index),
                    );
                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 300,
                    height: 300,
                  ),
                  Text("이 카테고리에 작업이 없습니다."),
                  Text("+를 클릭하여 작업을 만듭니다."),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
