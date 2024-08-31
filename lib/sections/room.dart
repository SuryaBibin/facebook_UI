import 'package:facebook/Widgets/profilepic.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Room extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          roomButton(),
          ProfilePic(
            profilePic: surya,
            displayStatus: true,
          ),
          ProfilePic(
            profilePic: bibin,
            displayStatus: true,
          ),
          ProfilePic(
            profilePic: dileep,
            displayStatus: true,
          ),
          ProfilePic(
            profilePic: dq,
            displayStatus: true,
          ),
          ProfilePic(
            profilePic: mammootty,
            displayStatus: true,
          ),
          ProfilePic(
            profilePic: mohanlal,
            displayStatus: true,
          ),
        ],
      ),
    );
  }
}

Widget roomButton() {
  return Container(
    padding: const EdgeInsets.only(left: 3, right: 3),
    child: OutlinedButton.icon(
      style: const ButtonStyle(
        side: MaterialStatePropertyAll(
          BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
      ),
      onPressed: () {
        print('create a room');
      },
      icon: const Icon(
        Icons.video_call,
        color: Colors.red,
      ),
      label: const Text(
        'Create \n Room',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    ),
  );
}
