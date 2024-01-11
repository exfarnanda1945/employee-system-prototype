import 'package:employee_system_prototype/screens/auto-presence/auto-presence-screen.dart';
import 'package:employee_system_prototype/screens/main/approval/approval-screen.dart';
import 'package:employee_system_prototype/screens/manual-presence/manual-presence-screen.dart';
import 'package:employee_system_prototype/screens/sick/sick-screen.dart';
import 'package:go_router/go_router.dart';

final mainRouter = [
  GoRoute(
    path: "auto-presence",
    name: "auto-presence",
    builder: (context, state) {
      return const AutoPresenceScreen();
    },
  ),
  GoRoute(
    path: "manual-presence",
    name: "manual-presence",
    builder: (context, state) {
      return const ManualPresence();
    },
  ),
  GoRoute(
      path: "approval",
      name: "approval",
      builder: (context, state) {
        return const ApprovalScreen();
      },
      routes: [
        GoRoute(
          path: "sick",
          name: "sick",
          builder: (context, state) {
            return const SickScreen();
          },
        ),
        GoRoute(
          path: "out-of-office",
          name: "out-off-office",
          builder: (context, state) {
            return const ManualPresence();
          },
        ),
        GoRoute(
          path: "overtime",
          name: "overtime",
          builder: (context, state) {
            return const ManualPresence();
          },
        ),
        GoRoute(
          path: "reimbursement",
          name: "reimbursement",
          builder: (context, state) {
            return const ManualPresence();
          },
        ),
        GoRoute(
          path: "resign-app",
          name: "resign-app",
          builder: (context, state) {
            return const ManualPresence();
          },
        ),
      ])
];
