import 'package:clean_architecture_app/presentation/navigation/page_const.dart';
import 'package:clean_architecture_app/presentation/ui/date_time/bloc/date_time_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/date_time/date_time_page.dart';
import 'package:clean_architecture_app/presentation/ui/home/bloc/home_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/home/home_page.dart';
import 'package:clean_architecture_app/presentation/ui/login/bloc/login_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/register/bloc/register_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/search/bloc/search_location_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/search/search_location_page.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_car_detail/bloc/self_car_detail_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_car_detail/self_car_detail_page.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_search_result/bloc/self_search_result_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_search_result/self_search_result_page.dart';
import 'package:clean_architecture_app/presentation/ui/verification/bloc/verification_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/verification/verification_page.dart';
import 'package:clean_architecture_app/presentation/ui/with_driver/search_with_driver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../ui/login/login_page.dart';
import '../ui/register/register_page.dart';
class OnGenerateRoute{
  static Route<dynamic>? route(RouteSettings settings) {
    final args = settings.arguments;
    final di = GetIt.instance;

    switch (settings.name){
      case PageConst.selfCarDetailPage:
        return MaterialPageRoute(builder: (context) => BlocProvider.value(
          value: di.get<SelfCarDetailCubit>(),
          child: SelfCarDetailPage(arguments: args as Map<String,dynamic>,),
        ));
      case PageConst.selfSearchResult:
        return MaterialPageRoute(builder: (context) => BlocProvider.value(
          value: di.get<SelfSearchResultCubit>(),
          child: SelfSearchResultPage(arguments: args as Map<String,dynamic>,),
        ));
      case PageConst.dateTimePage:
        return MaterialPageRoute(builder: (context) => BlocProvider.value(
          value: di.get<DateTimeCubit>(),
          child: DateTimePage(arguments: args as Map<String,dynamic>,),
        ));
      case PageConst.searchLocation:
        return MaterialPageRoute(builder: (context) => BlocProvider.value(
          value: di.get<SearchLocationCubit>(),
          child: const SearchLocationPage(),
        ));
      case PageConst.verificationPage:
        return MaterialPageRoute(builder: (context) => BlocProvider.value(
          value: di.get<VerificationCubit>(),
          child: VerificationPage(info: args as Map<String,dynamic>),
        ));
      case PageConst.signIn:
      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: di.get<LoginCubit>(),
          child: const SignInPage(),
        ),
      );
      case PageConst.signUp:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: di.get<RegisterCubit>(),
            child: const SignUpPage(),
          ),
        );
      default:
        return routeBuilder(const NoPageFound());
    }
  }

}

dynamic routeBuilder(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}

class NoPageFound extends StatelessWidget {
  const NoPageFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page not found"),
      ),
      body: const Center(child: Text("Page not found"),),
    );
  }
}
