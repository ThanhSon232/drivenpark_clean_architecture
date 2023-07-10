import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/shared/helper/date_time_helper.dart';
import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';

class SearchResultAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final AppBar appBar;

  const SearchResultAppBar(
      {Key? key,
      required this.appBar,
      required this.startDate,
      required this.endDate,
      required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateTimeString =
        '${DateTimeHelper.formatToHHmmDDMM(startDate)} - ${DateTimeHelper.formatToHHmmDDMM(endDate)}';
    return AppBar(
      centerTitle: false,
      elevation: 0,
      backgroundColor: AppColors.white,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            location,
            style: AppTextStyle.baseMedium,
          ),
          Text(
            dateTimeString,
            style: AppTextStyle.baseMedium,
          )
        ],
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: AppColors.violet500,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
