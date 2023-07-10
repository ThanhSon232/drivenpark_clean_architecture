import 'package:clean_architecture_app/data/repository/models/search_location_model.dart';
import 'package:clean_architecture_app/presentation/navigation/routes.dart';
import 'package:clean_architecture_app/presentation/ui/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'injection_container.dart' as di;

final globalNavigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  await di.init();
  await GetIt.instance.allReady();
  // Hive.registerAdapter(SearchLocationModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: globalNavigatorKey,
      onGenerateRoute: OnGenerateRoute.route,
      home: const RootPage(),
    );
  }
}
