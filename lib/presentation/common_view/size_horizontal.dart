import 'package:flutter/material.dart';
class SizeHor extends StatelessWidget {
  final double width;
  const SizeHor({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
