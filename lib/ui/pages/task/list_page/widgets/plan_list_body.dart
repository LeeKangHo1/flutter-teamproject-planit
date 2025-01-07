import 'package:flutter/material.dart';

import '../../../../../screens/calendar.dart';
import '../../../../../screens/my_profile.dart';
import '../../../../../screens/my_task.dart';
import '../../../../../screens/side.dart';

class PlanListBody extends StatelessWidget {
  final int selectedIndex;

  PlanListBody({
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: selectedIndex, // 0번이 최초 화면, 화면 전환 시 숫자 변경
      children: [
        Side(),
        MyTask(),
        Calendar(),
        MyProfile(),
      ],
    );
    ;
  }
}
