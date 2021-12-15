import 'package:ebookapp/models/tabs.dart';
import 'package:flutter/material.dart';

class TabsButton extends StatefulWidget {
  const TabsButton({Key? key}) : super(key: key);

  @override
  State<TabsButton> createState() => _TabsButtonState();
}

class _TabsButtonState extends State<TabsButton> {
  int tabselect = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: tabList.length,
        itemBuilder: (context, index){
          TabsList tabItem = tabList[index];
          return InkWell(
            onTap: (){
              setState(() {
                tabselect = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              padding: EdgeInsets.symmetric(vertical: 3,horizontal: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:tabselect==index?Color.fromRGBO(66, 66, 86, 1):Color.fromRGBO(238, 238, 238, 1),
              ),
              // width: 70,
              child: Center(
                  child: Text(tabItem.tabTitle,
                    style: TextStyle(
                      fontSize: 19,
                      color:tabselect==index?Colors.white:Color.fromRGBO(171,171,179,1),
                    ),
                  )),
            ),
          );
        },),
    );
  }
}
