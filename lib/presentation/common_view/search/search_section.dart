import 'package:clean_architecture_app/presentation/common_view/size_horizontal.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';

class SearchSection extends StatefulWidget {
  final String title;
  final String? data;
  final IconData iconData;
  final Color? iconColor;
  final EdgeInsetsGeometry? margin;
  final void Function()? onTap;

  const SearchSection(
      {Key? key,
      required this.title,
      this.data,
      required this.iconData,
      this.iconColor,
      this.margin,
      this.onTap})
      : super(key: key);

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.margin ?? const EdgeInsets.all(20),
      // width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: AppTextStyle.smallLite.copyWith(color: AppColors.white500),
          ),
          // const SizeVer(height: 10),
          Row(
            children: [
              Icon(
                widget.iconData,
                color: widget.iconColor,
              ),
              const SizeHor(width: 10),
              Flexible(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                    padding: EdgeInsets.zero
                  ),
                  onPressed: widget.onTap,
                  child: Text(
                    widget.data ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.baseBook,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: AppColors.white300,
          )
        ],
      ),
    );
  }
}
