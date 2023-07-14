import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_architecture_app/domain/entities/car_detail_info.dart';
import 'package:clean_architecture_app/domain/entities/owner_basic_info.dart';
import 'package:clean_architecture_app/presentation/common_view/car_detail/owner_component.dart';
import 'package:clean_architecture_app/presentation/common_view/car_detail/price_component.dart';
import 'package:clean_architecture_app/presentation/common_view/car_detail/rating_component.dart';
import 'package:clean_architecture_app/presentation/common_view/size_horizontal.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/common_view/text_with_icon.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_car_detail/bloc/self_car_detail_cubit.dart';
import 'package:clean_architecture_app/shared/helper/money_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../shared/dialog/snackbar.dart';

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
  final _cubit = GetIt.instance.get<SelfCarDetailCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cubit.load(widget.arguments["id"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SelfCarDetailCubit, SelfCarDetailState>(
        listener: (context, state) {
          if (state is SelfCarDetailLoading) {
            state.isLoading
                ? showLoaderDialog(context)
                : dismissLoaderDialog(context);
          }
        },
        builder: (context, state) {
          if (state is SelfCarDetailLoaded) {
            return CustomScrollView(
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
                        items: state.data.imageURL.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return CachedNetworkImage(
                                imageUrl: i,
                                fit: BoxFit.fill,
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ]),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert))
                  ],
                ),
                basicInfo(data: state.data),
                divider(),
                title(title: "Rental policies"),
                rentalPolicies(data: state.data.policies),
                divider(),
                title(title: "Rental requirements"),
                rentalRequirements(data: state.data.rentalRequirements),
                divider(),
                title(title: "Important information"),
                importantInformation(),
                divider(),
                title(title: "Location"),
                location(address: state.data.address.address),
                divider(),
                title(title: "Owner"),
                ownerAndReview(ownerBasicInfo: state.data.owner, star: state.data.rating)
              ],
            );
          } else if (state is SelfCarDetailError) {
            return Center(
              child: Text(state.error),
            );
          }
          return const SizedBox();
        },
      ),
      bottomNavigationBar: BlocBuilder<SelfCarDetailCubit, SelfCarDetailState>(
        builder: (context, state) {
        if(state is SelfCarDetailLoaded){
          return Container(
            decoration: BoxDecoration(border: Border.all()),
            child: SafeArea(
              child: PriceComponent(
                price: state.data.price,
                chatCommand: () {},
                continueCommand: () {},
              ),
            ),
          );
        }
        return const SizedBox();
        },
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

  Widget basicInfo({required CarDetailInfo data}) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.carName,
              style: AppTextStyle.largeMedium,
            ),
            const SizeVer(height: 5),
            highlightInfo(
                seat: data.seat,
                type: data.type,
                manufacturedYear: data.manufacturedYear,
                transmission: data.transmission),
            const SizeVer(height: 10),
            Text(
              "Features",
              style: AppTextStyle.baseBook.copyWith(color: AppColors.white500),
            ),
            features(data.features)
          ],
        ),
      ),
    );
  }

  Widget highlightInfo({required String seat,
    required String type,
    required String manufacturedYear,
    required String transmission}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextWithIcon(
              text: seat,
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
              text: type,
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
              text: manufacturedYear,
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
          text: transmission,
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
          .map((e) =>
          Card(
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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

  Widget location({required String address, double? lat, double? lon}) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWithIcon(
              text: address,
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

  Widget ownerAndReview({required OwnerBasicInfo ownerBasicInfo, required String star}) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: OwnerComponent(
              onPressed: null,
              avatarURL: ownerBasicInfo.avatarURL,
              name: ownerBasicInfo.fullName,
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          RatingComponent(star: star,)
        ],
      ),
    );
  }
}
