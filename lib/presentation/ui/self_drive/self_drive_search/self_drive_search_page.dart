import 'package:clean_architecture_app/presentation/common_view/common_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/credential/my_custom_button.dart';
import 'package:clean_architecture_app/presentation/common_view/search/search_section.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/navigation/page_const.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_drive_search/bloc/self_drive_search_cubit.dart';
import 'package:clean_architecture_app/shared/helper/date_time_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../main.dart';

class SelfDriveSearchPage extends StatefulWidget {
  const SelfDriveSearchPage({Key? key}) : super(key: key);

  @override
  State<SelfDriveSearchPage> createState() => _SelfDriveSearchPageState();
}

class _SelfDriveSearchPageState extends State<SelfDriveSearchPage> {
  final _cubit = GetIt.instance.get<SelfDriveSearchCubit>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cubit.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppbar(
          title: "Self-driving search",
          appBar: AppBar(),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColors.violet75.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(style: BorderStyle.solid)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            searchLocation(),
            selectStartDate(),
            selectEndDate(),
            const SizeVer(height: 10),
            MyCustomButton(
              onPressed: () {
                _cubit.confirm(globalNavigatorKey.currentContext ?? context);
              },
              title: "Search",
              margin: const EdgeInsets.only(
                  top: 5, bottom: 20, left: 20, right: 20),
            )
            ],
          ),
        ));
  }

  Widget searchLocation() {
    return BlocBuilder<SelfDriveSearchCubit, SelfDriveSearchState>(
      builder: (context, state) {
        if(state is SelfDriveSearchInitial) {
          return SearchSection(
          onTap: () =>
              _cubit.selectLocation(),
          margin:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          iconData: Icons.location_on_outlined,
          iconColor: AppColors.yellow300,
          title: "Your rental location",
          data: state.searchLocation?.address ?? "Search your location",
        );
        }
        return const SizedBox();
      },
    );
  }

  Widget selectStartDate() {
    return BlocBuilder<SelfDriveSearchCubit, SelfDriveSearchState>(
      builder: (context, state) {
        if (state is SelfDriveSearchInitial) {
          return SearchSection(
            onTap: () =>
                _cubit.selectDateTime(),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            iconData: Icons.calendar_month,
            iconColor: AppColors.blue300,
            title: "Pick-up date & time",
            data: DateTimeHelper.formatToHHmmDDYYMM(state.startDateTime),
          );
        }
        return const SizedBox();
      },
    );
  }

  Widget selectEndDate() {
    return BlocBuilder<SelfDriveSearchCubit, SelfDriveSearchState>(
        builder: (context, state) {
          if (state is SelfDriveSearchInitial) {
            return SearchSection(
              onTap: () =>
                  Navigator.pushNamed(
                      globalNavigatorKey.currentContext!,
                      PageConst.dateTimePage),
              margin: const EdgeInsets.symmetric(
                  vertical: 10, horizontal: 20),
              iconData: Icons.calendar_month,
              iconColor: AppColors.blue300,
              title: "Drop-off date & time",
              data: DateTimeHelper.formatToHHmmDDYYMM(state.endDateTime),
            );
          }
          return const SizedBox();
        });
  }


}
