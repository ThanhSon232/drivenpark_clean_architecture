import 'package:flutter/material.dart';

import '../resources/styles/app_colors.dart';
import '../resources/styles/app_text_style.dart';
class BaseAppbar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final String title;
  const BaseAppbar({Key? key, required this.appBar, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: AppColors.white,
      title: Text(
          title,
          style: AppTextStyle.heading5
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.violet500,
        ),
        onPressed: ()=> Navigator.pop(context),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
