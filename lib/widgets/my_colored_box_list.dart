import 'package:flutter/material.dart';
import 'package:flutter_training_2023/domain/align/model.dart';
import 'package:flutter_training_2023/widgets/my_colored_box.dart';

class MyColoredBoxList extends StatelessWidget {
  final int width;
  final int height;
  final AlignDirection align;
  final int amount;
  final Color color;
  const MyColoredBoxList({
    Key? key,
    required this.width,
    required this.height,
    required this.align,
    required this.amount,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignment = toMainAxisAlignment(align);

    List<Widget> children = List.filled(
      amount,
      [
        MyColoredBox(
          color: color,
          width: width,
          height: height,
        ),
        const SizedBox(width: 10),
      ],
    ).expand((e) => e).toList();
    children = children.sublist(0, children.length - 1); // 末尾のSizedBoxを取り除く

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: children,
    );
  }
}
