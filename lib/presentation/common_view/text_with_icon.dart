import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Icon icon;

  const TextWithIcon(
      {Key? key,
      this.textStyle,
      required this.text,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 3,),
        Text(
          text,
          style: textStyle,
        )
      ],
    );
  }
}
