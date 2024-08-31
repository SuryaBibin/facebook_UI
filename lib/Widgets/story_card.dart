import 'package:facebook/Widgets/profilepic.dart';
import 'package:facebook/Widgets/round.dart';

import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String storyImageName;
  final String labelText;
  final bool createStoryLabel;
  final String profilePic;
  final bool profileBorder;

  const StoryCard(
      {super.key,
      required this.storyImageName,
      required this.labelText,
      this.createStoryLabel = false,
      required this.profilePic,
      this.profileBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: const EdgeInsets.only(top: 10, bottom: 10, right: 5, left: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(storyImageName), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 5,
            top: 3,
            child: createStoryLabel
                ? RoundButton(
                    buttonAction: () {
                      print('Add your Story');
                    },
                    buttonIcon: Icons.add,
                    buttonIconColor: Colors.blue,
                  )
                : ProfilePic(
                    width: 35,
                    height: 35,
                    profilePic: profilePic,
                    displayStatus: false,
                    profileBorder: profileBorder,
                  ),
          ),
          Positioned(
            bottom: 3,
            left: 15,
            child: Text(
              labelText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
