import 'package:facebook/Widgets/blue_tick.dart';
import 'package:facebook/Widgets/header_button.dart';
import 'package:facebook/Widgets/profilepic.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profilePic;
  final String profileName;
  final String postedAt;
  final bool verified;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard(
      {required this.profilePic,
      required this.profileName,
      required this.postedAt,
      this.verified = false,
      required this.postTitle,
      required this.postImage,
      required this.likeCount,
      required this.commentCount,
      required this.shareCount});

  Widget bigSpace = const SizedBox(
    width: 10,
  );
  Widget smallSpace = const SizedBox(
    width: 5,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostHeader(),
          titleText(),
          post(),
          footer(),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          HeaderButtonSection(
            buttonOne: headerButton(
                buttonAction: () {
                  print('Like Button Pressed');
                },
                buttonIcon: Icons.thumb_up,
                iconColor: Colors.grey,
                buttonText: 'Like'),
            buttonTwo: headerButton(
                buttonAction: () {
                  print('Comment Button Pressed');
                },
                buttonIcon: Icons.message,
                iconColor: Colors.grey,
                buttonText: 'Comment'),
            buttonThree: headerButton(
                buttonAction: () {
                  print('Share Button Pressed');
                },
                buttonIcon: Icons.share,
                iconColor: Colors.grey,
                buttonText: 'Share'),
          ),
        ],
      ),
    );
  }

  Widget PostHeader() {
    return ListTile(
      leading: ProfilePic(profilePic: profilePic, displayStatus: false),
      title: Row(
        children: [
          Text(
            profileName,
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          smallSpace,
          verified ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(postedAt),
          smallSpace,
          Icon(
            Icons.public,
            size: 15,
            color: Colors.grey[700],
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print('More button pressed');
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget titleText() {
    return postTitle != null && postTitle != ''
        ? Container(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              postTitle == null ? '' : postTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget post() {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Image.asset(postImage),
    );
  }

  Widget footer() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.thumb_up,
                    size: 12,
                    color: Colors.white,
                  ),
                ),
                smallSpace,
                Container(child: footerText(likeCount)),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                footerText(commentCount),
                smallSpace,
                footerText('Comments'),
                bigSpace,
                footerText(shareCount),
                smallSpace,
                footerText('Shares'),
                bigSpace,
                ProfilePic(
                  profilePic: profilePic,
                  displayStatus: false,
                  width: 25,
                  height: 25,
                ),
                IconButton(
                  onPressed: () {
                    print('Drop down button poressed');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 25,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget footerText(String textLabel) {
    return Text(
      textLabel == null ? '' : textLabel,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 13,
      ),
    );
  }
}
