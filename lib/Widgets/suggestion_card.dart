import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String profilePic;
  final String name;
  final String mutualFriendsCount;

  SuggestionCard(
      {required this.profilePic,
      required this.name,
      required this.mutualFriendsCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        child: Image.asset(
          profilePic,
          fit: BoxFit.cover,
          height: 240,
        ),
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25)),
        ),
        height: 140,
        child: Column(
          children: [
            ListTile(
              title: Text(
                name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              subtitle: Text(mutualFriendsCount == ''
                  ? ''
                  : mutualFriendsCount + ' Mutual Friends'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  addButton(),
                  removeButton(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addButton() {
    return TextButton.icon(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)),
        onPressed: () {
          print('Friend request sent');
        },
        icon: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),
        label: const Text(
          'Add Friend',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ));
  }

  Widget removeButton() {
    return TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.grey[400],
          padding: const EdgeInsets.only(left: 30, right: 30),
        ),
        onPressed: () {
          print('Remove Suggestion');
        },
        child: const Text(
          'Remove',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
