import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/navigation/page_const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/card_home.dart';
import '../../common_view/home/selection_widget.dart';
import '../../common_view/size_horizontal.dart';
import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import 'bloc/home_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _cubit = GetIt.instance<HomeCubit>();

  @override
  void initState() {
    super.initState();
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //   await _cubit.getHomeData();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColors.violet500,
                child: Icon(
                  Icons.person,
                  color: AppColors.white,
                ),
              ),
              const SizeHor(width: 10),
              Text(
                "Welcome",
                style: AppTextStyle.heading5,
              )
            ],
          ),
        ),
        backgroundColor: AppColors.white,
        body: BlocProvider(
          create: (context) => _cubit..getHomeData(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView(
                    padding: const EdgeInsets.all(10),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Selection(
                        onPressed: () {
                          Navigator.pushNamed(context, PageConst.selfSearchPage);
                        },
                          icon: Icons.directions_car_outlined,
                          title: "Self-driving cars"),
                      Selection(
                        onPressed: (){
                          Navigator.pushNamed(context, PageConst.searchWithDriver);
                        },
                          icon: Icons.supervisor_account,
                          title: "Cars with drivers"),
                      Selection(
                          icon: Icons.local_parking, title: "Parking lots")
                    ],
                  ),
                ),

                const SizeVer(height: 20),

                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) {
                    if (state is HomeLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state is HomeError) {
                      return Center(child: Text(state.error));
                    }
                    if (state is HomeLoaded) {
                      return cardHome(
                          title: "Self-driving cars", data: state.data);
                    }
                    return const SizedBox();
                  },
                )
                // state is HomeLoading ? const CircularProgressIndicator() : state is HomeLoaded ? cardHome(title: "Self-driving cars", data: state.data) : Text("Error")
              ],
            ),
          ),
        ));
  }

  Widget cardHome({required String title, required List<CardHome> data}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.baseMedium,
          ),
          const SizeVer(height: 10),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return cardImage(data[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizeHor(width: 10);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget cardImage(CardHome data) {
    return Container(
      height: 180,
      width: 230,
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: AppColors.violet75.withOpacity(0.2),
          //     spreadRadius: 5,
          //     blurRadius: 2,
          //     offset: const Offset(3, 6), // changes position of shadow
          //   ),
          // ],
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            image: AssetImage(data.imageURL),
            fit: BoxFit.fill
        )
      ),
      child: Container(
        margin: const EdgeInsets.all(15),
        alignment: Alignment.bottomLeft,
        child: Text(data.name, style: AppTextStyle.largeMedium.copyWith(color: AppColors.white),),
      ),
    );
  }
}
