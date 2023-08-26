import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  final Color color;
  final int width;
  final int height;
  const MyColoredBox(
      {Key? key,
      required this.color,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.toDouble(),
      height: height.toDouble(),
      child: ColoredBox(
        color: color,
      ),
    );
  }
}
