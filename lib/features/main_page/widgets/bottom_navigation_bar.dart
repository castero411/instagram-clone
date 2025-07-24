import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/main_page/controller/bottom_nav_controller.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});

  get bottomNavigationItems => [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "home",
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings_outlined),
      activeIcon: Icon(Icons.settings),
      label: "settings",
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(bottomNavProvider);
    final bottomNavController = ref.read(bottomNavProvider.notifier);

    return BottomNavigationBar(
      items: bottomNavigationItems,
      currentIndex: currentIndex,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(size: 30),
      unselectedIconTheme: IconThemeData(size: 30),
      //TODO: create an icon theme and add it to the core
      onTap: (value) {
        bottomNavController.setIndex(value);
      },
    );
  }
}
