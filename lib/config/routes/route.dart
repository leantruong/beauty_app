import 'package:beauty_app/presentation/features/message/message_screen.dart';
import 'package:beauty_app/presentation/navigator_layout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/features/calendar/calendar_screen.dart';
import '../../presentation/features/explore/explore_screen.dart';
import '../../presentation/features/home/home_screen.dart';
import '../../presentation/features/setting/settting_screen.dart';

final navigatorKey = GlobalKey<NavigatorState>();
final route = GoRouter(
    initialLocation: '/home',
    navigatorKey: navigatorKey, routes: [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return NavigatorLayout(statefulShellRoute: navigationShell);
    },
    branches: [
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/home',
            builder: (context, state) => const HomeScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/explore',
            builder: (context, state) => const ExploreScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/calendar',
            builder: (context, state) => const CalendarScreen(),
          ),
        ],
      ),
      StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/message',
            builder: (context, state) => const MessageScreen(),
          ),
        ],
      ),
     
       StatefulShellBranch(
        routes: [
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingScreen(),
          ),
        ],
      ),
    ],
  ),
]);
