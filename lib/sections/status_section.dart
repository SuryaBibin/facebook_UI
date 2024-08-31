import 'package:facebook/Widgets/profilepic.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ProfilePic(
        profilePic: surya,
        displayStatus: false,
      ),
      title: const TextField(
        decoration: InputDecoration(
          hintText: 'What\'s on your mind?',
          hintStyle: TextStyle(color: Colors.black87),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
