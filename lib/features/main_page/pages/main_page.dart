import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/main_page/controller/bottom_nav_controller.dart';
import 'package:instagram/features/main_page/pages/feed_page.dart';
import 'package:instagram/features/main_page/widgets/bottom_navigation_bar.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  get pages => [
    FeedPage(),
    Placeholder(child: Text("place holder 2")),
    Placeholder(child: Text("place holder 3")),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentIndex = ref.watch(bottomNavProvider);

    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: BottomNav(),
    );
  }
}
