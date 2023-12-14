import 'package:employee_system_prototype/utils/colors.dart';
import 'package:employee_system_prototype/widget/bottom-navigation/navigation-menu-item.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key,
      required this.currentPage,
      required this.onDestinationChange});

  final int currentPage;
  final ValueChanged<int> onDestinationChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navigationMenuListItem.asMap().entries.map(
        (item) {
          final isSelected = item.key == currentPage;
          final itemMenu = item.value;
          return BottomNavigationBarItem(
            icon: Icon(
              isSelected ? itemMenu.iconSelected : itemMenu.icon,
              color: isSelected ? blueberry : davyGrey,
              size: isSelected ? 32 : 30,
            ),
            label: itemMenu.name,
          );
        },
      ).toList(),
      onTap: onDestinationChange,
      currentIndex: currentPage,
      unselectedItemColor: davyGrey,
      selectedItemColor: blueberry,
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: const TextStyle(
        color: davyGrey,
        fontSize: 13,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
      selectedLabelStyle: const TextStyle(
        color: blueberry,
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.bold,
        height: 0,
      ),
    );
  }
}
