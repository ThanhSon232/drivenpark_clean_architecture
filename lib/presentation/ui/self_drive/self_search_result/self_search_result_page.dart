import 'package:clean_architecture_app/data/repository/models/request/search_request_model.dart';
import 'package:clean_architecture_app/presentation/common_view/common_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/search_result/search_result_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/search_result/self_search_card.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_search_result/bloc/self_search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../../domain/entities/location.dart';
import '../../../../shared/dialog/snackbar.dart';
import '../../../navigation/page_const.dart';

class SelfSearchResultPage extends StatefulWidget {
  final Map<String, dynamic> arguments;

  const SelfSearchResultPage({Key? key, required this.arguments})
      : super(key: key);

  @override
  State<SelfSearchResultPage> createState() => _SelfSearchResultPageState();
}

class _SelfSearchResultPageState extends State<SelfSearchResultPage> {
  late final String title;
  late final DateTime startDate;
  late final DateTime endDate;
  late final SearchLocation searchLocation;
  final _cubit = GetIt.instance.get<SelfSearchResultCubit>();
  int pageNum = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDate = widget.arguments["startDate"];
    endDate = widget.arguments["endDate"];
    searchLocation = widget.arguments["searchLocation"];
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //
    // });
  }

  @override
  void didChangeDependencies() async {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    await _cubit.loadData(SearchRequestModel(
        startTime: startDate,
        endTime: endDate,
        address: {
          "latitude": searchLocation.coordinate.latitude,
          "longitude": searchLocation.coordinate.longitude
        },
        pageNum: pageNum += 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchResultAppBar(
        startDate: startDate,
        endDate: endDate,
        location: searchLocation.address,
        appBar: AppBar(),
      ),
      body: BlocConsumer<SelfSearchResultCubit, SelfSearchResultState>(
        listener: (context, state) {
          if (state is SelfSearchResultLoading) {
            state.isLoading
                ? showLoaderDialog(context)
                : dismissLoaderDialog(context);
          }
        },
        builder: (context, state) {
          if (state is SelfSearchResultLoaded) {
            return RefreshIndicator(
              onRefresh: () async => await _cubit.loadData(SearchRequestModel(
                  startTime: startDate,
                  endTime: endDate,
                  address: {
                    "latitude": searchLocation.coordinate.latitude,
                    "longitude": searchLocation.coordinate.longitude
                  },
                  pageNum: 1)),
              child: ListView.builder(
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return SelfSearchCard(
                        onTap: () => {
                              Navigator.pushNamed(
                                  context, PageConst.selfCarDetailPage,
                                  arguments: {'id': state.data[index].id})
                            },
                        carName: state.data[index].carName,
                        price: state.data[index].price,
                        imageURL: state.data[index].imageURL,
                        star: state.data[index].rating.toString(),
                        feature: state.data[index].supportDelivery
                            ? "Home deliver"
                            : "Not deliver",
                        address: state.data[index].address.address);
                  }),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
