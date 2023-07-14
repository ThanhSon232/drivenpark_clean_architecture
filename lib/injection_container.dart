import 'package:clean_architecture_app/data/repository/source/local/local_repository_imp.dart';
import 'package:clean_architecture_app/data/repository/source/local/prefs/app_pref.dart';
import 'package:clean_architecture_app/data/repository/source/remote/api/business_api_service.dart';
import 'package:clean_architecture_app/data/repository/source/remote/api/credential_api_service.dart';
import 'package:clean_architecture_app/data/repository/source/remote/api/search_api_service.dart';
import 'package:clean_architecture_app/data/repository/source/remote/builder/dio_builder.dart';
import 'package:clean_architecture_app/data/repository/source/remote/business_repository_imp.dart';
import 'package:clean_architecture_app/data/repository/source/remote/location_imp.dart';
import 'package:clean_architecture_app/data/repository/source/remote/repository_impl.dart';
import 'package:clean_architecture_app/domain/repositories/business_repository.dart';
import 'package:clean_architecture_app/domain/repositories/credential_repository.dart';
import 'package:clean_architecture_app/domain/repositories/local_repository.dart';
import 'package:clean_architecture_app/domain/repositories/location_repository.dart';
import 'package:clean_architecture_app/domain/usecases/generate_otp_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/get_car_detail_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/get_home_data_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/get_search_location_self_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/login_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/register_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/search_location_use_case.dart';
import 'package:clean_architecture_app/domain/usecases/self_search_use_case.dart';
import 'package:clean_architecture_app/presentation/ui/date_time/bloc/date_time_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/home/bloc/home_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/login/bloc/login_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/register/bloc/register_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/search/bloc/search_location_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_car_detail/bloc/self_car_detail_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_drive_search/bloc/self_drive_search_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/self_drive/self_search_result/bloc/self_search_result_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/verification/bloc/verification_cubit.dart';
import 'package:clean_architecture_app/presentation/ui/with_driver/bloc/search_with_driver_cubit.dart';
import 'package:clean_architecture_app/shared/contants/preferences/preference_constants.dart';
import 'package:clean_architecture_app/shared/contants/search_url_constants.dart';
import 'package:clean_architecture_app/shared/contants/server/server_request_response_constants.dart';
import 'package:clean_architecture_app/shared/contants/server/server_timeout_constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<LoginCubit>(() => LoginCubit(sl()));
  sl.registerLazySingleton<RegisterCubit>(() => RegisterCubit());
  sl.registerLazySingleton<VerificationCubit>(
      () => VerificationCubit(sl(), sl()));
  sl.registerLazySingleton<HomeCubit>(() => HomeCubit(sl()));
  sl.registerLazySingleton<SearchLocationCubit>(() => SearchLocationCubit(sl()));
  sl.registerLazySingleton<DateTimeCubit>(() => DateTimeCubit());
  sl.registerLazySingleton<SelfDriveSearchCubit>(() => SelfDriveSearchCubit(sl()));
  sl.registerLazySingleton<SelfSearchResultCubit>(() => SelfSearchResultCubit(sl()));
  sl.registerLazySingleton<SearchWithDriverCubit>(() => SearchWithDriverCubit());
  sl.registerLazySingleton<SelfCarDetailCubit>(() => SelfCarDetailCubit(sl()));

  // sl.registerSingleton<HomeCubit>(() => HomeCubit(sl()));

  await Hive.initFlutter();



  //use cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegisterUseCase(sl()));
  sl.registerLazySingleton(() => GenerateOTPUseCase(sl()));
  sl.registerLazySingleton(() => GetHomeDataUseCase(sl()));
  sl.registerLazySingleton(() => SearchLocationUseCase(sl()));
  sl.registerLazySingleton(() => GetSearchLocationSelfUseCase(sl()));
  sl.registerLazySingleton(() => SelfSearchUseCase(sl()));
  sl.registerLazySingleton(() => GetCarDetailUseCase(sl()));

  //dio
  sl.registerLazySingleton<Dio>(() => DioBuilder.getInstance());

  //repo
  sl.registerLazySingleton(() => CredentialAPIService(sl()));
  sl.registerLazySingleton<BusinessAPIService>(() => BusinessAPIImp(sl()));
  sl.registerLazySingleton<SearchAPIService>(() => SearchAPIImp(Dio()
    ..options = BaseOptions(
      baseUrl: SearchURLConstants.baseURL,
      contentType: ServerRequestResponseConstants.contentType,
      connectTimeout: const Duration(
          milliseconds: ServerTimeoutConstants.connectTimeoutInMs),
      receiveTimeout: const Duration(
          milliseconds: ServerTimeoutConstants.receiveTimeoutInMs),
      sendTimeout:
          const Duration(milliseconds: ServerTimeoutConstants.sendTimeoutInMs),
    )));

  //remote
  sl.registerLazySingleton<CredentialRepository>(() => RepositoryImpl(sl()));
  sl.registerLazySingleton<LocationRepository>(() => LocationRepositoryImp(sl()));
  sl.registerLazySingleton<BusinessRepository>(() => BusinessRepositoryImp(sl()));

  //local
  sl.registerLazySingleton<LocalRepository>(() => LocalRepositoryImp());
  sl.registerSingletonAsync<AppPrefs>(() async => AppPrefs(prefBox: await Hive.openBox(PreferenceConstants.prefsBox)));
  // sl.registerSingleton<GetHomeDataUseCase>(GetHomeDataUseCase(sl()));
}
