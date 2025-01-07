import 'package:flutter/material.dart';
import 'package:projectplanit/screens/sidedrawer.dart';
import 'package:projectplanit/ui/pages/task/list_page/widgets/plan_list_body.dart';
import 'package:projectplanit/ui/widgets/custom_bottom_navigationbar.dart';

class PlanListPage extends StatefulWidget {
  @override
  State<PlanListPage> createState() => _PlanListPageState();
}

class _PlanListPageState extends State<PlanListPage> {
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
      // 임시 앱바
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Temp AppBar"),
        centerTitle: true,
      ),
      body: PlanListBody(selectedIndex: selectedIndex),
      bottomNavigationBar: CustomBottomNavigationbar(
          selectedIndex: selectedIndex,
          onClickBottomNavigation: onClickBottomNavigation),
    );
  }
}
