import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class SearchWithDriverPage extends StatefulWidget {
  const SearchWithDriverPage({Key? key}) : super(key: key);

  @override
  State<SearchWithDriverPage> createState() => _SearchWithDriverPageState();
}

class _SearchWithDriverPageState extends State<SearchWithDriverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.violet500,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: AppColors.white,
        centerTitle: false,
        title: Text(
          "Cars with driver",
          style: AppTextStyle.heading5,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: AppColors.white),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rental location",
                style: AppTextStyle.baseMedium,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 0,
                  padding: EdgeInsets.zero
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.location_on,
                  color: Colors.yellow,
                ),
                label: Text("Hồ Chí Minh city", style: AppTextStyle.baseBook,),
              ),
              const Divider(),

            ],
          ),
        ),
      ),
    );
  }
}
