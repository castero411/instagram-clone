import 'package:flutter/material.dart';
import 'package:instagram/core/constants/text_styles.dart';
import 'package:instagram/features/main_page/widgets/feed_page_app_bar.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram", style: appBarLogo.copyWith(fontSize: 30)),
      ),
    );
  }
}
