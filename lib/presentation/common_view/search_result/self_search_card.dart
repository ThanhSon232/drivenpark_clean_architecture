import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

import '../text_with_icon.dart';

class SelfSearchCard extends StatelessWidget {
  final String carName;
  final String imageURL;
  final String price;
  final String star;
  final String feature;
  final String address;

  const SelfSearchCard(
      {Key? key,
      required this.carName,
      required this.price,
      required this.imageURL,
      required this.star,
      required this.feature,
      required this.address})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              carName,
              style: AppTextStyle.baseMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(imageURL),
                    )),
                Flexible(
                    flex: 6,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextWithIcon(
                              text: price,
                              icon: const Icon(Icons.attach_money),
                              textStyle: AppTextStyle.baseMedium,
                            ),
                            TextWithIcon(
                              text: star,
                              icon: const Icon(Icons.star),
                              textStyle: AppTextStyle.baseMedium,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextWithIcon(
                            text: feature,
                            icon: const Icon(Icons.featured_play_list_outlined),
                            textStyle: AppTextStyle.baseMedium,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextWithIcon(
                            text: address,
                            icon: const Icon(Icons.location_on),
                            textStyle: AppTextStyle.baseMedium,
                          ),
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
