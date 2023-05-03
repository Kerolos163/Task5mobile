import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Screens/NumbersPage.dart';
import 'Screens/familyScreen.dart';

class ContainerItem {
  String Text;
  Color color;
  Function func;
  ContainerItem(this.Text, this.color, this.func);
}

class TokuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ContainerItem> items = [
      ContainerItem("Number", Colors.orange, () {
        print("Number");
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return  NumbersScreen();
          },
        ));
      }),
      ContainerItem("Family Members", Colors.green, () {
        print("Family Members");
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return  FamilyScreen();
          },
        ));
      }),
      ContainerItem("Colors", Colors.purple, () {
        print("Colors");
        // Navigator.push(context, MaterialPageRoute(
        //   builder: (context) {
        //     return const NumbersScreen();
        //   },
        // ));
      }),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text("Language Learning App"),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 70,
            width: double.infinity,
            color: Colors.grey[400],
            child: const Text(
              "Your way to Learn Japanese",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          // Containerbuilder("Number", Colors.orange),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => Containerbuilder(
                items[index].Text, items[index].color, items[index].func),
            itemCount: items.length,
          ),
        ],
      ),
    );
  }

  Widget Containerbuilder(String txt, Color color, Function func) {
    return InkWell(
      onTap: () => func(),
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          txt,
          style: const TextStyle(
              fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
