import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final String profilePic;
  final bool displayStatus;
  final bool profileBorder;
  final double width;
  final double height;

  const ProfilePic(
      {required this.profilePic,
      required this.displayStatus,
      this.profileBorder = false,
      this.width = 50,
      this.height = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: profileBorder
            ? Border.all(
                color: Colors.blueAccent,
              )
            : const Border(),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              profilePic,
              width: width,
              height: height,
            ),
          ),
          displayStatus
              ? Positioned(
                  bottom: 0,
                  right: 1,
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        border: Border.all(
                          color: Colors.white70,
                          width: 2,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        )),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
