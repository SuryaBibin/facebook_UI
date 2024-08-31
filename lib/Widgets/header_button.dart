import 'package:flutter/material.dart';

Widget headerButton({
  required void Function() buttonAction,
  required IconData buttonIcon,
  required Color iconColor,
  required String buttonText,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      buttonIcon,
      color: iconColor,
    ),
    label: Text(
      buttonText,
      style: const TextStyle(color: Colors.black87),
    ),
  );
}
