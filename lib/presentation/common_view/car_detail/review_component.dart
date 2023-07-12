import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import '../text_with_icon.dart';

class ReviewComponent extends StatelessWidget {
  const ReviewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          dense: true,
          leading: ClipOval(
            child: CachedNetworkImage(
              imageUrl:
                  "https://robbreport.com/wp-content/uploads/2022/11/2-7.jpg?w=1000",
              height: 40,
              width: 40,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            "Adman Shanif",
            style: AppTextStyle.baseMedium,
          ),
          subtitle: RatingBarIndicator(
            rating: 2.75,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 20.0,
            direction: Axis.horizontal,
          ),
          trailing: Text(
            "5 mins ago",
            style: AppTextStyle.smallBook.copyWith(color: AppColors.white500),
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 20),child: Text("Content"))
      ],
    );
  }
}
