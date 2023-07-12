import 'package:flutter/material.dart';

class TextWithIcon extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Icon icon;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final double? spacing;

  const TextWithIcon(
      {Key? key,
      this.textStyle,
      required this.text,
      required this.icon,
      this.textOverflow,
        this.maxLines,
        this.spacing
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          children: [
            WidgetSpan(child: icon),
            WidgetSpan(child: SizedBox(width: spacing ?? 5,)),
            TextSpan(text:             text,
              style: textStyle,
              ),
          ],
        ),
      overflow: textOverflow,
      maxLines: maxLines ?? 1,

    );
    // return Row(
    //   children: [
    //     icon,
    //     const SizedBox(width: 3,),
    //     Expanded(
    //       child: Text(
    //         text,
    //         style: textStyle,
    //         overflow: textOverflow,
    //         maxLines: maxLines ?? 1,
    //       ),
    //     )
    //   ],
    // );
  }
}
