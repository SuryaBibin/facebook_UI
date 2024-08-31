import 'package:flutter/material.dart';

class BlueTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      child: const Icon(
        Icons.check,
        size: 12,
        color: Colors.white,
      ),
    );
  }
}
