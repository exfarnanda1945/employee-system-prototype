import 'package:employee_system_prototype/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ApprovalMenu {
  ApprovalMenu({
    required this.title,
    required this.icon,
    required this.color,
    required this.navigateTo,
  });

  final String title;
  final IconData icon;
  final Color color;
  final String navigateTo;
}

final approvalMenuList = [
  ApprovalMenu(
      title: "Sick",
      icon: Icons.medication_outlined,
      color: orangeCarrot,
      navigateTo: "sick"),
  ApprovalMenu(
      title: "Out of Office",
      icon: Symbols.tab_move,
      color: redChest,
      navigateTo: "leave"),
  ApprovalMenu(
      title: "Overtime",
      icon: Icons.pending_actions,
      color: purple,
      navigateTo: "overtime"),
  ApprovalMenu(
      title: "Reimbursement",
      icon: Icons.request_quote,
      color: greenEmerald,
      navigateTo: "reimbursement"),
  ApprovalMenu(
      title: "Resign\n Application",
      icon: Icons.handshake,
      color: hanBlue,
      navigateTo: "resign"),
];
