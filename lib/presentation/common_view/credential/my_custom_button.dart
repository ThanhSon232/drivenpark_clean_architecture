import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
class MyCustomButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? margin;

  const MyCustomButton({Key? key, required this.onPressed, required this.title, this.height, this.width, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue300,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              )),
          onPressed: onPressed,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Text(title, style: AppTextStyle.baseMedium.copyWith(color: AppColors.white),),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.centerRight,
                  child:CircleAvatar(
                    backgroundColor: AppColors.blue400,
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.white,
                    ),
                  )
              )
            ],
          )),
    );
  }
}
