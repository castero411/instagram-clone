import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/feed/controller/bottom_nav_controller.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});
  final userImage = 'assets/images/keanu.jpg';

  get bottomNavigationItems => [
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      activeIcon: Icon(Icons.search),
      label: "Search",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.add_box_outlined),
      activeIcon: Icon(Icons.add_box_rounded),
      label: "Reels",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.movie_filter_outlined),
      activeIcon: Icon(Icons.movie_filter_rounded),
      label: "Reels",
    ),
    BottomNavigationBarItem(
      icon: UserActiveIcon(userImage: userImage, flag: false),
      activeIcon: UserActiveIcon(userImage: userImage, flag: true),
      label: "User",
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
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(size: 30),
      unselectedIconTheme: IconThemeData(size: 30),
      enableFeedback: false,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        bottomNavController.setIndex(value);
      },
    );
  }
}

class UserActiveIcon extends StatelessWidget {
  const UserActiveIcon({
    super.key,
    required this.userImage,
    required this.flag,
  });
  final String userImage;
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(flag ? 1 : 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(100),
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(100),

        child: Image.asset(
          userImage,
          fit: BoxFit.cover,
          height: flag ? 28 : 30,
          width: flag ? 28 : 30,
        ),
      ),
    );
  }
}
