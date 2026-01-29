import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:instagram/features/feed/controller/bottom_nav_controller.dart';
import 'package:instagram/features/feed/pages/feed_page.dart';
import 'package:instagram/features/feed/widgets/bottom_navigation_bar.dart';
import 'package:instagram/features/search/pages/search_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  get pages => [
    FeedPage(), // home page
    SearchPage(), // search page
    Placeholder(
      child: Center(child: Text("create placeholder")),
    ), // create page
    Placeholder(
      child: Center(child: Text("reels placeholder")),
    ), // reels page or discover page
    Placeholder(
      child: Center(child: Text("profile placeholder")),
    ), // profile page
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
