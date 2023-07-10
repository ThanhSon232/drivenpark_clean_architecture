import 'package:clean_architecture_app/data/repository/source/local/prefs/app_pref.dart';
import 'package:clean_architecture_app/data/repository/source/local/prefs/pref_helper.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../shared/contants/preferences/preference_constants.dart';

class AppStorage{
  AppStorage._();

  static AppStorage init() {
    return AppStorage._();
  }

  Future<PrefHelper> prefHelper() async {
    return AppPrefs(prefBox: await Hive.openBox(PreferenceConstants.prefsBox));
  }
}