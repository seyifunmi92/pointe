import 'package:flutter/material.dart';

class BottomNavItems {
  IconData? icon;
  void Function()? onClickItem;
  String? item;

  BottomNavItems({this.icon, this.onClickItem, this.item});
}
