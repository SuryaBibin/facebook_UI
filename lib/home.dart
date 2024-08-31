import 'package:facebook/Widgets/header_button.dart';
import 'package:facebook/Widgets/post_card.dart';
import 'package:facebook/Widgets/round.dart';
import 'package:facebook/assets.dart';
import 'package:facebook/sections/header_button_section.dart';
import 'package:facebook/sections/room.dart';
import 'package:facebook/sections/status_section.dart';
import 'package:facebook/sections/story_section.dart';
import 'package:facebook/sections/suggestion_section.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Widget thinDivider = Divider(
    thickness: 1,
    color: Colors.grey[300],
  );
  final Widget thickDivider = Divider(
    thickness: 10,
    color: Colors.grey[300],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'facebook',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            RoundButton(
              buttonAction: () {
                print('Show add options');
              },
              buttonIcon: Icons.add,
            ),
            RoundButton(
              buttonAction: () {
                print('Show search options');
              },
              buttonIcon: Icons.search,
            ),
            RoundButton(
              buttonAction: () {
                print('Show message options');
              },
              buttonIcon: Icons.message_sharp,
            ),
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(
              buttonOne: headerButton(
                buttonAction: () {
                  print('Live Button Pressed');
                },
                buttonIcon: Icons.video_call,
                iconColor: Colors.red,
                buttonText: 'Live',
              ),
              buttonTwo: headerButton(
                buttonAction: () {
                  print('Photo Button Pressed');
                },
                buttonIcon: Icons.photo,
                iconColor: Colors.green,
                buttonText: 'Photos',
              ),
              buttonThree: headerButton(
                buttonAction: () {
                  print('Room Button Pressed');
                },
                buttonIcon: Icons.video_call,
                iconColor: Colors.purpleAccent,
                buttonText: 'Rooms',
              ),
            ),
            thickDivider,
            Room(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              profilePic: mohanlal,
              profileName: 'Mohan Lal',
              postedAt: '5h',
              verified: true,
              postTitle: 'Happy Diwali...!!!',
              postImage: diwali4,
              likeCount: '35k',
              commentCount: '12k',
              shareCount: '5k',
            ),
            thickDivider,
            PostCard(
              profilePic: tovino,
              profileName: 'Tovino',
              postedAt: '2 day',
              verified: true,
              postTitle: 'Wishing everyone a happy Diwali!!',
              postImage: diwali2,
              likeCount: '3k',
              commentCount: '1k',
              shareCount: '200',
            ),
            thickDivider,
            PostCard(
              profilePic: raj,
              profileName: 'Prithvi Raj',
              postedAt: '10h',
              verified: true,
              postTitle: '',
              postImage: diwali1,
              likeCount: '5k',
              commentCount: '2k',
              shareCount: '1k',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              profilePic: bibin,
              profileName: 'Bibin Mohan',
              postedAt: '1h',
              verified: false,
              postTitle: 'Diwali Wishes all!!',
              postImage: diwali3,
              likeCount: '194',
              commentCount: '12',
              shareCount: '5',
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
