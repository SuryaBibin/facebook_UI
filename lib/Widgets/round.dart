import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final void Function() buttonAction;
  final IconData buttonIcon;
  final buttonIconColor;

  const RoundButton({
    required this.buttonAction,
    required this.buttonIcon,
    this.buttonIconColor = Colors.black87,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 1, right: 1, bottom: 6, top: 6),
      padding: EdgeInsets.all(1),
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      child: IconButton(
          onPressed: buttonAction,
          icon: Icon(
            buttonIcon,
            color: buttonIconColor,
            size: 28,
          )),
    );
  }
}
