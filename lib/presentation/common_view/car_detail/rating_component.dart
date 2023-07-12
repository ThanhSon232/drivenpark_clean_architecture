import 'package:clean_architecture_app/presentation/common_view/car_detail/review_component.dart';
import 'package:clean_architecture_app/presentation/common_view/text_with_icon.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class RatingComponent extends StatelessWidget {
  const RatingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          dense: true,
          title: Text(
            "Ratings",
            style: AppTextStyle.baseMedium,
          ),
          subtitle: TextWithIcon(
            text: "5.0",
            icon: Icon(
              Icons.star,
              color: AppColors.yellow300,
            ),
            textStyle: AppTextStyle.baseBook,
          ),
          trailing: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.transparent,
              elevation: 0
            ),
            child: Text(
              "See all >",
              style: AppTextStyle.baseBook.copyWith(color: AppColors.blue300),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(thickness: 1,),
        ),
        const ReviewComponent()
      ],
    );
  }
}
