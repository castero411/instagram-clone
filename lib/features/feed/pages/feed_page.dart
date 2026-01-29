import 'package:flutter/material.dart';
import 'package:instagram/core/constants/text_styles.dart';
import 'package:instagram/core/widgets/icon_button.dart';
import 'package:instagram/features/feed/widgets/post_container.dart';
import 'package:instagram/features/feed/widgets/stories_bar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              surfaceTintColor: Colors.transparent,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Instagram",
                  style: appBarLogo.copyWith(fontSize: 30),
                ),
              ),
              actions: [
                XIconButton(
                  onTap: () {},
                  activeIcon: Icons.favorite_outline_outlined,
                  paddingRight: 10,
                ),
                XIconButton(
                  onTap: () {},
                  activeIcon: Icons.messenger_outline_rounded,
                  paddingRight: 10,
                  paddingLeft: 10,
                ),
              ],
            ),

            SliverToBoxAdapter(child: StoriesBar()),
            SliverList.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return PostContainer();
              },
            ),
          ],
        ),
      ),
    );
  }
}
