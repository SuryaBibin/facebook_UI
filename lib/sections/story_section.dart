import 'package:facebook/Widgets/story_card.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyImageName: surya,
            labelText: 'Add to Story',
            profilePic: surya,
            createStoryLabel: true,
          ),
          StoryCard(
            storyImageName: diwali1,
            labelText: 'Mohan Lal',
            profilePic: mohanlal,
            profileBorder: true,
          ),
          StoryCard(
            storyImageName: diwali2,
            labelText: 'Tovino',
            profilePic: tovino,
            profileBorder: true,
          ),
          StoryCard(
            storyImageName: diwali3,
            labelText: 'Prithvi Raj',
            profilePic: raj,
            profileBorder: true,
          ),
          StoryCard(
            storyImageName: diwali4,
            labelText: 'Mammootty',
            profilePic: mammootty,
            profileBorder: true,
          ),
        ],
      ),
    );
  }
}
