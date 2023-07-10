import 'package:flutter/material.dart';

class SizeVer extends StatelessWidget {
  final double height;
  const SizeVer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
