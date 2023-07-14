import 'package:flutter/material.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import '../size_horizontal.dart';

class PriceComponent extends StatelessWidget {
  final String price;
  final void Function()? chatCommand;
  final void Function()? continueCommand;

  const PriceComponent(
      {Key? key,
      required this.price,
      required this.chatCommand,
      required this.continueCommand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: AppTextStyle.largeMedium,
              ),
              Text(
                price,
                style: AppTextStyle.largeBook,
              )
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: chatCommand,
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
                child: const Text("Chat now"),
              ),
              const SizeHor(width: 5),
              ElevatedButton(
                  onPressed: continueCommand,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red300,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                  child: const Text("Continue"))
            ],
          )
        ],
      ),
    );
  }
}
