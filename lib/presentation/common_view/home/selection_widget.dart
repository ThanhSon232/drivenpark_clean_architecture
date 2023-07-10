import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import '../size_horizontal.dart';

class Selection extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onPressed;
  const Selection({Key? key, required this.icon, required this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(18),
            backgroundColor: AppColors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                    color: AppColors.white300
                )
            )
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, color: AppColors.violet500, size: 30,),
            const SizeHor(width: 10),
            Text(title, style: AppTextStyle.baseMedium.copyWith(color: AppColors.violet500))
          ],
        ),
      ),
    );
  }
}
