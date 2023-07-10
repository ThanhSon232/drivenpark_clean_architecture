import 'dart:async';

import 'package:clean_architecture_app/presentation/common_view/form_container_widget.dart';
import 'package:clean_architecture_app/presentation/common_view/size_vertical.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_colors.dart';
import 'package:clean_architecture_app/presentation/resources/styles/app_text_style.dart';
import 'package:clean_architecture_app/presentation/ui/search/bloc/search_location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/location.dart';

class SearchLocationPage extends StatefulWidget {
  const SearchLocationPage({Key? key}) : super(key: key);

  @override
  State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {
  final _cubit = GetIt.instance.get<SearchLocationCubit>();
  final bool _showSuggestion = true;
  Timer? userInputTimer;
  final TextEditingController _search = TextEditingController();

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    _cubit.dispose();
  }

  @override
  void dispose(){
    super.dispose();
    _search.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _search.addListener(() {
      userInputTimer?.cancel();

      // Tạo một timer mới
      userInputTimer = Timer(const Duration(milliseconds: 1500), () {
        _cubit.search(_search.text);
      });
    });

    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: TextField(
          controller: _search,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
        ),
      ),
      body: BlocBuilder<SearchLocationCubit, SearchLocationState>(
        builder: (context, state) {
          if (state is SearchLocationLoaded) {
           return result(state.data);
          }
          if (state is SearchLocationLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is SearchLocationError) {
            return Center(
              child: Text(state.error),
            );
          }
          return suggestion();
        },
      ),
    );
  }

  Widget result(List<SearchLocation> data){
    return ListView.separated(
      itemCount: data.length,
      itemBuilder: (context,index){
        return ListTile(
          onTap: () => {
            Navigator.pop(context, [data[index]])
          },
          leading: Icon(Icons.location_on, color: AppColors.yellow300,),
          title: Text(data[index].address),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return const Divider();
    },);
  }

  Widget suggestion(){
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Suggestion",
            style: AppTextStyle.baseMedium,
          ),
          const SizeVer(height: 5),
          Wrap(
            spacing: 10,
            children: _cubit.suggest
                .map((e) =>
                ElevatedButton(
                  onPressed: () {
                    _search.text = e;
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    e,
                    style: AppTextStyle.baseMedium
                        .copyWith(color: AppColors.white),
                  ),
                )
            )
                .toList(),
          )
        ],
      ),
    );
  }
}
