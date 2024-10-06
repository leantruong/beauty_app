import 'package:beauty_app/core/util/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NavigatorLayout extends StatelessWidget {
  NavigatorLayout({super.key, required this.statefulShellRoute});
  final StatefulNavigationShell statefulShellRoute;

  final destinations = [


    NavItem(icon:  AppAssetImg.homeIc, label: 'Home'),
    NavItem(icon:  AppAssetImg.exploreIc, label: 'Explore'),
    NavItem(icon:  AppAssetImg.calendarIc, label: 'Calendar'),
    NavItem(icon: AppAssetImg.messageIc, label: 'Message'),
    NavItem(icon:  AppAssetImg.profileIc, label: 'Profile'),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: statefulShellRoute,
      bottomNavigationBar: Stack(
        children: [
          NavigationBar(
             selectedIndex: statefulShellRoute.currentIndex,
             onDestinationSelected: statefulShellRoute.goBranch,
              destinations: destinations
                  .map((e) => NavigationDestination(
                        icon: SvgPicture.asset(e.icon),
                        label: e.label,
                      ))
                  .toList())
        ],
      ),
    );
  }
}

class NavItem {
  String label;
  String icon;
  NavItem({required this.icon, required this.label});
}
