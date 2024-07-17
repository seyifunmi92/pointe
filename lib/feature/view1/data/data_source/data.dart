import 'package:flutter/material.dart';
import 'package:moniepointmobile/feature/view1/data/DTOs/bottomnavmodels.dart';

List<BottomNavItems> bottomNavItems = [
  BottomNavItems(
    icon: Icons.search,
    pageIndex: 0,
    item: "Search",
  ),
  BottomNavItems(
    icon: Icons.location_on,
    pageIndex: 1,
    item: "Maps",
  ),
  BottomNavItems(
    icon: Icons.home,
    pageIndex: 2,
    item: "Home",
  ),
  BottomNavItems(
    icon: Icons.heat_pump_rounded,
    pageIndex: 3,
    item: "Likes",
  ),
  BottomNavItems(
    icon: Icons.contacts,
    pageIndex: 4,
    item: "Contacts",
  ),
];
