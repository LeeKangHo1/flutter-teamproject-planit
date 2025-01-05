import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("확장패널리스트"),
          ExpansionPanelList(),
        ],
      ),
    );
  }
}
