import 'package:clean_architecture_app/data/repository/mappers/search_location_mapper.dart';
import 'package:clean_architecture_app/data/repository/models/search_location_model.dart';
import 'package:clean_architecture_app/data/repository/source/local/prefs/pref_helper.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'package:hive/hive.dart';

import '../../../../../shared/contants/preferences/preference_constants.dart';

class AppPrefs extends PrefHelper {
  final Box _prefBox;

  AppPrefs({required Box prefBox}) : _prefBox = prefBox;

  @override
  Future<bool> firstRun() async {
    return _prefBox.get(PreferenceConstants.isFirstLaunchApp) ?? true;
  }

  @override
  Future<void> setFirstRun(bool isFirstRun) async {
    await _prefBox.put(PreferenceConstants.isFirstLaunchApp, isFirstRun);
  }

  @override
  Future<String?> getToken() async {
    return _prefBox.get(PreferenceConstants.accessToken);
  }

  @override
  Future setToken(String token) async {
    await _prefBox.put(PreferenceConstants.accessToken, token);
  }

  // @override
  // Future<UserModel?> getUserSaved() async {
  //   final userJson = _prefBox.get(_userKey);
  //   if (userJson != null) {
  //     try {
  //       return UserModel.fromJson(userJson);
  //     } on Exception {
  //       return null;
  //     }
  //   }
  //
  //   return null;
  // }
  //
  // @override
  // Future saveUser(UserModel user) async {
  //   await _prefBox.put(_userKey, user.toJson().toString());
  // }

  @override
  Future<String?> getRefreshToken() async {
    return await _prefBox.get(PreferenceConstants.refreshToken);
  }

  @override
  Future setRefreshToken(String token) async {
    await _prefBox.put(PreferenceConstants.refreshToken, token);
  }

  @override
  Future<SearchLocation> getSearchLocation() async {
    var result = await _prefBox.get(PreferenceConstants.searchLocationSelf);
    return SearchLocationMapper()
        .mapToEntity(SearchLocationModel.fromJson(result));
  }

  @override
  Future setSearchLocationSelf(SearchLocation searchLocation) async {
    await _prefBox.put(PreferenceConstants.searchLocationSelf,
        SearchLocationMapper().mapToData(searchLocation).toJson());
  }
}
