import 'package:facebook/Widgets/suggestion_card.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'People Who May Know',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  print('More button pressed');
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            Container(
              height: 390,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                SuggestionCard(
                    profilePic: bibin,
                    name: 'Bibin Mohan',
                    mutualFriendsCount: '18'),
                SuggestionCard(
                    profilePic: dq,
                    name: 'Dulquar Salman',
                    mutualFriendsCount: ''),
                SuggestionCard(
                    profilePic: mammootty,
                    name: 'Mammootty',
                    mutualFriendsCount: '3'),
              ]),
            ),
          ],
        ));
  }
}
