import 'package:flutter/material.dart';
import 'package:projectplanit/ui/pages/task/list_page/widgets/plan_list_body_category_line.dart';
import 'package:projectplanit/ui/pages/task/list_page/widgets/plan_list_body_point_popup.dart';

import '../ui/pages/task/list_page/widgets/plan_list_body_expansion.dart';

class MyTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              // 수평 스크롤 카테고리
              Expanded(
                child: PlanListBodyCategoryLine(),
              ),
              // 점 3개 팝업 메뉴
              PlanListBodyPointPopup(),
            ],
          ),
          Divider(),
          // TODO 작업이 하나도 없을 때 보여주는 화면 PlanListBodyCheckbox
          // 확장 패널
          PlanListBodyExpansion(),
          Divider(),
          Center(child: Text(
            "완료된 모든 작업 확인",
            style: TextStyle(
              color: Colors.grey, // 글자색을 회색으로 설정
              decoration: TextDecoration.underline, // 밑줄 추가
            ),
          ),
          ),
        ],
      ),
    );
  }
}


