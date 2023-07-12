import 'package:cached_network_image/cached_network_image.dart';
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
  final void Function()? onTap;

  const SelfSearchCard({Key? key,
    required this.carName,
    required this.price,
    required this.imageURL,
    required this.star,
    required this.feature,
    required this.address,
    this.onTap

  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
                  Expanded(
                      flex: 4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          height: 100,
                          width: 200,
                          fit: BoxFit.fill, imageUrl: imageURL,
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: TextWithIcon(
                                  text: price,
                                  icon: const Icon(Icons.attach_money),
                                  textStyle: AppTextStyle.baseMedium,
                                ),
                              ),
                              const SizedBox(width: 5,),
                              TextWithIcon(
                                text: star,
                                icon: const Icon(Icons.star),
                                textStyle: AppTextStyle.baseMedium,
                              ),
                            ],
                          ),
                          TextWithIcon(
                            text: feature,
                            icon: const Icon(Icons.featured_play_list_outlined),
                            textStyle: AppTextStyle.baseMedium,
                          ),
                          TextWithIcon(
                            text: address,
                            icon: const Icon(Icons.location_on),
                            textStyle: AppTextStyle.baseMedium,
                            maxLines: 2,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
