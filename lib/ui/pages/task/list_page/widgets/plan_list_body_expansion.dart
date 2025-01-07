import 'package:flutter/material.dart';
import 'package:projectplanit/ui/pages/task/list_page/widgets/plan_list_body_checkbox.dart';

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class PlanListBodyExpansion extends StatefulWidget {
  const PlanListBodyExpansion({super.key});

  @override
  State<PlanListBodyExpansion> createState() => _PlanListBodyExpansionState();
}

class _PlanListBodyExpansionState extends State<PlanListBodyExpansion> {
  final List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            leading: PlanListBodyCheckbox(),
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
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
