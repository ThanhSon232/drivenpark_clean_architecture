import 'package:clean_architecture_app/presentation/common_view/common_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/search_result/search_result_app_bar.dart';
import 'package:clean_architecture_app/presentation/common_view/search_result/self_search_card.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/location.dart';
class SelfSearchResultPage extends StatefulWidget {
  final Map<String, dynamic> arguments;
  const SelfSearchResultPage({Key? key, required this.arguments}) : super(key: key);

  @override
  State<SelfSearchResultPage> createState() => _SelfSearchResultPageState();
}

class _SelfSearchResultPageState extends State<SelfSearchResultPage> {
  late final String title;
  late final DateTime startDate;
  late final DateTime endDate;
  late final SearchLocation searchLocation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDate = widget.arguments["startDate"];
    endDate = widget.arguments["endDate"];
    searchLocation = widget.arguments["searchLocation"];

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

    );
  }
}
