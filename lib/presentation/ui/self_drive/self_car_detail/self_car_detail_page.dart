import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_architecture_app/presentation/common_view/car_detail/owner_component.dart';
import 'package:clean_architecture_app/presentation/common_view/car_detail/rating_component.dart';
import 'package:clean_architecture_app/presentation/common_view/size_horizontal.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/common_view/text_with_icon.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class SelfCarDetailPage extends StatefulWidget {
  final Map<String, dynamic> arguments;

  const SelfCarDetailPage({Key? key, required this.arguments})
      : super(key: key);

  @override
  State<SelfCarDetailPage> createState() => _SelfCarDetailPageState();
}

class _SelfCarDetailPageState extends State<SelfCarDetailPage> {
  List<String> sample = ["Bluetooth", "GPS", "CD/DVD", "AC"];
  List<String> sample1 = ["Bluetooth", "GPS", "CD/DVD", "AC"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppColors.white400,
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: 400.0,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CachedNetworkImage(
                          imageUrl: "https://robbreport.com/wp-content/uploads/2022/11/2-7.jpg?w=1000",
                          fit: BoxFit.fill,
                        );
                      },
                    );
                  }).toList(),
                ),
              ]),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          basicInfo(),
          divider(),
          title(title: "Rental policies"),
          rentalPolicies(data: sample1),
          divider(),
          title(title: "Rental requirements"),
          rentalRequirements(data: sample1),
          divider(),
          title(title: "Important information"),
          importantInformation(),
          divider(),
          title(title: "Location"),
          location(),
          divider(),
          title(title: "Owner"),
          ownerAndReview()
        ],
      ),
    );
  }

  Widget divider() {
    return SliverToBoxAdapter(
      child: Divider(
        thickness: 10,
        color: Colors.grey[300],
      ),
    );
  }

  Widget basicInfo() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Chrysler 300",
              style: AppTextStyle.largeMedium,
            ),
            const SizeVer(height: 5),
            highlightInfo(),
            const SizeVer(height: 10),
            Text(
              "Features",
              style: AppTextStyle.baseBook.copyWith(color: AppColors.white500),
            ),
            features(sample)
          ],
        ),
      ),
    );
  }

  Widget highlightInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextWithIcon(
              text: "9",
              icon: Icon(
                Icons.airline_seat_recline_extra,
                size: 20,
                color: AppColors.blue300,
              ),
              textStyle:
                  AppTextStyle.baseMedium.copyWith(color: AppColors.blue300),
            ),
            const SizeHor(width: 20),
            TextWithIcon(
              text: "Electric",
              icon: Icon(
                Icons.luggage,
                size: 20,
                color: AppColors.blue300,
              ),
              textStyle:
                  AppTextStyle.baseMedium.copyWith(color: AppColors.blue300),
            ),
            const SizeHor(width: 20),
            TextWithIcon(
              text: "2016",
              icon: Icon(
                Icons.directions_car,
                size: 20,
                color: AppColors.blue300,
              ),
              textStyle:
                  AppTextStyle.baseMedium.copyWith(color: AppColors.blue300),
            ),
          ],
        ),
        TextWithIcon(
          text: "Manual",
          icon: Icon(
            Icons.loop,
            size: 20,
            color: AppColors.blue300,
          ),
          textStyle: AppTextStyle.baseMedium.copyWith(color: AppColors.blue300),
        ),
      ],
    );
  }

  Widget features(List<String> data) {
    return Wrap(
      children: data
          .map((e) => Card(
                color: AppColors.blue50,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.white300),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      e,
                      style: AppTextStyle.smallBook
                          .copyWith(color: AppColors.blue300),
                    )),
              ))
          .toList(),
    );
  }

  Widget title({required String title}) {
    return SliverToBoxAdapter(
      child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Text(
            title,
            style: AppTextStyle.baseMedium,
          )),
    );
  }

  Widget rentalPolicies({required List<String> data}) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: TextWithIcon(
              text: data[index],
              icon: Icon(
                Icons.warning,
                color: AppColors.yellow300,
              ),
              textStyle: AppTextStyle.baseBook,
            ),
          );
        },
        childCount: data.length, // 1000 list items
      ),
    );
  }

  Widget rentalRequirements({required List<String> data}) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: TextWithIcon(
              text: data[index],
              icon: Icon(
                Icons.check,
                color: AppColors.blue300,
              ),
              textStyle: AppTextStyle.baseBook,
            ),
          );
        },
        childCount: data.length, // 1000 list items
      ),
    );
  }

  importantInformation() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Before you book",
              style: AppTextStyle.baseMedium,
            ),
            const Text("Make sure to read the rental requirements"),
            Text(
              "After you book",
              style: AppTextStyle.baseMedium,
            ),
            const Text(
                "You have to deposit the amount of money via our app and the provider will contact you to negotiate."),
            Text(
              "During pick-up",
              style: AppTextStyle.baseMedium,
            ),
            const Text(
                "Bring your ID card, driver’s license and all required documents by the provider. When you meet the provider, check the car’s condition together with him. After that, do all the requirements by the rental provider and you're good to go."),
          ],
        ),
      ),
    );
  }

  Widget location() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWithIcon(
              text: "District 3, Ho Chi Minh City",
              icon: Icon(
                Icons.location_on_outlined,
                color: AppColors.blue300,
              ),
              textStyle: AppTextStyle.baseMedium,
            )
          ],
        ),
      ),
    );
  }

  Widget ownerAndReview() {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: OwnerComponent(
              onPressed: null,
              name: "Thanh Son",
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          RatingComponent()
        ],
      ),
    );
  }
}
