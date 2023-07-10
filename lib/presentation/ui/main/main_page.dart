import 'package:clean_architecture_app/presentation/navigation/page_const.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_drive_search/self_drive_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../resources/styles/app_colors.dart';
import '../../resources/styles/app_text_style.dart';
import '../home/home_page.dart';
import '../message/message_page.dart';
import '../notification/notification_page.dart';
import '../order/order_page.dart';
import '../self_drive/self_drive_search/bloc/self_drive_search_cubit.dart';
import '../self_drive/self_search_result/bloc/self_search_result_cubit.dart';
import '../user_not_login/user_not_login_page.dart';
import '../with_driver/search_with_driver.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;
  final di = GetIt.instance;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Navigator(onGenerateRoute: (settings) {
        Widget page = const HomePage();
        if (settings.name == PageConst.selfSearchPage) {
          page = const SelfDriveSearchPage();
        } else if (settings.name == PageConst.searchWithDriver) {
          return MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                    value: di.get<SelfSearchResultCubit>(),
                    child: const SearchWithDriverPage(),
                  ));
        }
        return MaterialPageRoute(
            builder: (context) => BlocProvider.value(
                  value: di.get<SelfDriveSearchCubit>(),
                  child: page,
                ));
      }),
      OrderPage(),
      MessagePage(),
      NotificationPage(),
      UserNotLoginPage()
    ];

    void onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: AppColors.white400,
          selectedItemColor: AppColors.violet500,
          selectedLabelStyle: AppTextStyle.baseMedium,
          selectedIconTheme: IconThemeData(color: AppColors.violet500),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
        ));
  }
}
