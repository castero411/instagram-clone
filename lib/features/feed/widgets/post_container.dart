import 'package:flutter/material.dart';
import 'package:instagram/core/widgets/icon_button.dart';

// ignore: must_be_immutable
class PostContainer extends StatelessWidget {
  PostContainer({super.key});

  final imageLink = 'assets/images/funny_cat_1.jpg';
  final imageLink2 = 'assets/images/keanu.jpg';

  var postLiked = false;
  final userName = "Ahmed Hesham";
  final userImageLink = '';

  @override
  Widget build(BuildContext context) {
    final double maxWidth = 700;

    likePost() {
      postLiked = !postLiked;
      print('Post Liked');
    }

    openPost() {
      print("Post Opened");
    }

    openProfile() {
      print("Profile Opened");
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: SizedBox(
              height: 70,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: openProfile,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(10),

                      child: Image.asset(
                        imageLink2,
                        height: 45,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Padding(
                    padding: EdgeInsetsGeometry.only(top: 10),
                    child: GestureDetector(
                      onTap: openProfile,
                      child: Text(
                        userName,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 250),

            child: GestureDetector(
              onTap:
                  openPost, //implement zoom on image or navigate to a new page with zoomed in image
              onDoubleTap: likePost,
              child: SizedBox(
                child: Image.asset(
                  imageLink,
                  fit: BoxFit.fitWidth,
                  width: maxWidth,
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxWidth),
            child: SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    child: Row(
                      children: [
                        XIconButton(
                          onTap: () {},
                          activeIcon: Icons.favorite_border,
                          pressedIcon: Icons.favorite,
                          isPressed: false,
                          paddingLeft: 10,
                        ),

                        XIconButton(
                          onTap: () {},
                          activeIcon: Icons.comment_outlined,
                          pressedIcon: Icons.comment,
                          paddingLeft: 15,
                        ),

                        XIconButton(
                          onTap: () {},
                          activeIcon: Icons.send_outlined,
                          pressedIcon: Icons.send,
                          paddingLeft: 15,
                        ),
                      ],
                    ),
                  ),
                  XIconButton(
                    onTap: () {},
                    activeIcon: Icons.bookmark_border_rounded,
                    pressedIcon: Icons.bookmark,
                    paddingRight: 10,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
