import 'package:flutter/material.dart';

class TabsList{
  final String tabTitle;

   TabsList({
     required this.tabTitle,
});
}

List<TabsList> tabList = [
  TabsList(tabTitle: "Self-Help"),
  TabsList(tabTitle: "Finance"),
  TabsList(tabTitle: "Fantasy"),
  TabsList(tabTitle: "Comedy"),
];