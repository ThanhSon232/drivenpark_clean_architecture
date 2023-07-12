import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';
class OwnerComponent extends StatelessWidget {
  const OwnerComponent({Key? key, required this.onPressed, required this.name}) : super(key: key);
  final void Function()? onPressed;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: CachedNetworkImage(
              imageUrl: "https://robbreport.com/wp-content/uploads/2022/11/2-7.jpg?w=1000",
            height: 60,
            width: 60,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          children: [
            TextButton(onPressed: onPressed, child: Text(name, style: AppTextStyle.baseMedium.copyWith(color: AppColors.blue300),))
          ],
        )
      ],
    );
  }
}
