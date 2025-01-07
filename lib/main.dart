import 'package:flutter/material.dart';

import 'ui/pages/task/list_page/plan_list_page.dart';

void main() {
  runApp(PlanItUI());
}

class PlanItUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlanListPage(),
    );
  }
}
