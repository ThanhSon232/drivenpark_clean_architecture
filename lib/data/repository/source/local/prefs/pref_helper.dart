import '../../../../../domain/entities/location.dart';

abstract class PrefHelper{
  Future<bool> firstRun();

  Future<void> setFirstRun(bool isFirstRun);

  Future<String?> getToken();

  Future setToken(String token);

  Future<String?> getRefreshToken();
  Future setRefreshToken(String token);

  Future<SearchLocation> getSearchLocation();

  Future setSearchLocationSelf(SearchLocation searchLocation);

  // Future saveUser(UserModel user);
  //
  // Future<UserModel?> getUserSaved();
}