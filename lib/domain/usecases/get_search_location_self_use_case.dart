import 'package:clean_architecture_app/data/repository/source/local/prefs/app_pref.dart';
import 'package:clean_architecture_app/domain/entities/location.dart';
import 'base/base_use_case_no_params.dart';

class GetSearchLocationSelfUseCase extends BaseUseCaseNoParams<SearchLocation>{

  AppPrefs appPrefs;

  GetSearchLocationSelfUseCase(
      this.appPrefs
      );
  @override
  Future<SearchLocation> call() async{
    return appPrefs.getSearchLocation();
  }

}