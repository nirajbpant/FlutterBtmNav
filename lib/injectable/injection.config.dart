// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i16;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i15;

import '../application/bottom_navigation/bottom_navigation_bloc.dart' as _i5;
import '../application/get_gym_details/get_gym_details_bloc.dart' as _i38;
import '../application/get_notices/get_notices_bloc.dart' as _i39;
import '../application/join_gym/join_gym_cubit.dart' as _i56;
import '../application/login/login_bloc.dart' as _i58;
import '../application/logout/log_out_cubit.dart' as _i57;
import '../application/physical_activity/physical_activity_bloc.dart' as _i13;
import '../application/register/register_bloc.dart' as _i59;
import '../application/request_gym_admission/request_gym_admission_bloc.dart'
    as _i33;
import '../application/select_goal/select_goal_bloc.dart' as _i14;
import '../application/splash/splash_bloc.dart' as _i60;
import '../application/user_profile/user_profile_bloc.dart' as _i61;
import '../config/dependencies/dependencies.dart' as _i6;
import '../config/dependencies/development_dependencies.dart' as _i8;
import '../config/dependencies/production_dependencies.dart' as _i7;
import '../core/logger/http_formatter.dart' as _i9;
import '../data/app_config/app_config_api.dart' as _i37;
import '../data/app_config/datastore/app_config_datastore_impl.dart' as _i41;
import '../data/app_config/repository/app_config_repository_impl.dart' as _i43;
import '../data/get_gym_details/datastore/get_gym_details_datastore_impl.dart'
    as _i19;
import '../data/get_gym_details/get_gym_details_api_service.dart' as _i17;
import '../data/get_gym_details/repository/get_gym_details_repository_impl.dart'
    as _i21;
import '../data/get_notices/datastore/get_notices_datastore_impl.dart' as _i24;
import '../data/get_notices/get_notices_api_service.dart' as _i22;
import '../data/get_notices/repository/get_notices_repository_impl.dart'
    as _i26;
import '../data/join_gym/datastore/join_gym_datastore_impl.dart' as _i29;
import '../data/join_gym/join_gym_api_service.dart' as _i27;
import '../data/join_gym/repository/join_gym_repository_impl.dart' as _i31;
import '../data/network/interceptor/api_body_interceptor.dart' as _i3;
import '../data/network/interceptor/api_header_interceptor.dart' as _i4;
import '../data/network/interceptor/network_interceptor.dart' as _i12;
import '../data/network/repository/network_info_impl.dart' as _i11;
import '../data/register/datastore/register_datastore_impl.dart' as _i45;
import '../data/register/register_api.dart' as _i32;
import '../data/register/repository/register_repository_impl.dart' as _i47;
import '../data/session/datastore/session_datastore_impl.dart' as _i49;
import '../data/session/managers/session_preference_manager.dart' as _i35;
import '../data/session/repository/session_repository_impl.dart' as _i51;
import '../data/session/session_api.dart' as _i34;
import '../data/user_details/datastore/user_details_datastore_impl.dart'
    as _i53;
import '../data/user_details/repository/user_details_repository_impl.dart'
    as _i55;
import '../data/user_details/user_details_api.dart' as _i36;
import '../domain/app_config/datastore/app_config_datastore.dart' as _i40;
import '../domain/app_config/repository/app_config_repository.dart' as _i42;
import '../domain/get_gym_details/datastore/get_gym_details_datastore.dart'
    as _i18;
import '../domain/get_gym_details/repository/get_gym_details_repository.dart'
    as _i20;
import '../domain/get_notices/datastore/get_notices_datastore.dart' as _i23;
import '../domain/get_notices/repository/get_notices_repository.dart' as _i25;
import '../domain/join_gym/datastore/join_gym_datastore.dart' as _i28;
import '../domain/join_gym/repository/join_gym_repository.dart' as _i30;
import '../domain/network/network_info.dart' as _i10;
import '../domain/register/datastore/register_datastore.dart' as _i44;
import '../domain/register/repository/register_repository.dart' as _i46;
import '../domain/session/datastore/session_datastore.dart' as _i48;
import '../domain/session/repository/session_repository.dart' as _i50;
import '../domain/user_details/datastore/user_details_datastore.dart' as _i52;
import '../domain/user_details/repository/user_details_repository.dart' as _i54;
import 'modules/core_modules.dart' as _i63;
import 'modules/network_module.dart' as _i62;

const String _prod = 'prod';
const String _dev = 'dev';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final registerModule = _$RegisterModule();
  gh.factory<_i3.ApiBodyInceptor>(() => _i3.ApiBodyInceptor());
  gh.factory<_i4.ApiHeadersInterceptor>(() => _i4.ApiHeadersInterceptor());
  gh.singleton<_i5.BottomNavigationBloc>(_i5.BottomNavigationBloc());
  gh.lazySingleton<_i6.Dependencies>(() => _i7.ProductionDependenciesImpl(),
      registerFor: {_prod});
  gh.lazySingleton<_i6.Dependencies>(() => _i8.DevelopmentDependenciesImpl(),
      registerFor: {_dev});
  gh.factory<_i9.HttpFormatter>(() => networkModule.httpFormatter);
  gh.lazySingleton<_i10.INetworkInfo>(() => _i11.NetworkInfoImpl());
  gh.factory<_i12.NetworkConnectionInterceptor>(
      () => _i12.NetworkConnectionInterceptor(get<_i10.INetworkInfo>()));
  gh.factory<_i13.PhysicalActivityBloc>(() => _i13.PhysicalActivityBloc());
  gh.factory<_i14.SelectGoalBloc>(() => _i14.SelectGoalBloc());
  await gh.factoryAsync<_i15.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i16.Dio>(() => networkModule.getDio(
      get<_i12.NetworkConnectionInterceptor>(),
      get<_i9.HttpFormatter>(),
      get<_i4.ApiHeadersInterceptor>(),
      get<_i3.ApiBodyInceptor>()));
  gh.factory<_i17.GetGymDetailsApiService>(
      () => _i17.GetGymDetailsApiService(get<_i16.Dio>()));
  gh.lazySingleton<_i18.GetGymDetailsDataStore>(() =>
      _i19.GetGymDetailsDataStoreImpl(get<_i17.GetGymDetailsApiService>()));
  gh.lazySingleton<_i20.GetGymDetailsRepository>(() =>
      _i21.GetGymDetailsRepositoryImpl(get<_i18.GetGymDetailsDataStore>()));
  gh.factory<_i22.GetNoticesApiService>(
      () => _i22.GetNoticesApiService(get<_i16.Dio>()));
  gh.lazySingleton<_i23.IGetNoticesDataStore>(
      () => _i24.GetNoticesDataStoreImpl(get<_i22.GetNoticesApiService>()));
  gh.lazySingleton<_i25.IGetNoticesRepository>(
      () => _i26.GetNoticesRepositoryImpl(get<_i23.IGetNoticesDataStore>()));
  gh.factory<_i27.JoinGymApiService>(
      () => _i27.JoinGymApiService(get<_i16.Dio>()));
  gh.lazySingleton<_i28.JoinGymDataStore>(
      () => _i29.JoinGymDataStoreImpl(get<_i27.JoinGymApiService>()));
  gh.lazySingleton<_i30.JoinGymRepository>(
      () => _i31.JoinGymRepositoryImpl(get<_i28.JoinGymDataStore>()));
  gh.factory<_i32.RegisterApiService>(
      () => _i32.RegisterApiService(get<_i16.Dio>()));
  gh.factory<_i33.RequestGymAdmissionBloc>(
      () => _i33.RequestGymAdmissionBloc(get<_i30.JoinGymRepository>()));
  gh.factory<_i34.SessionApiService>(
      () => _i34.SessionApiService(get<_i16.Dio>()));
  gh.factory<_i35.SessionPreferenceManager>(
      () => _i35.SessionPreferenceManager(get<_i15.SharedPreferences>()));
  gh.factory<_i36.UserDetailsApiService>(
      () => _i36.UserDetailsApiService(get<_i16.Dio>()));
  gh.factory<_i37.AppConfigApi>(() => _i37.AppConfigApi(get<_i16.Dio>()));
  gh.factory<_i38.GetGymDetailsBloc>(
      () => _i38.GetGymDetailsBloc(get<_i20.GetGymDetailsRepository>()));
  gh.factory<_i39.GetNoticesBloc>(
      () => _i39.GetNoticesBloc(get<_i25.IGetNoticesRepository>()));
  gh.lazySingleton<_i40.IAppConfigDataStore>(
      () => _i41.AppConfigDataStoreImpl(get<_i37.AppConfigApi>()));
  gh.lazySingleton<_i42.IAppConfigRepository>(
      () => _i43.AppConfigRepositoryImpl(get<_i40.IAppConfigDataStore>()));
  gh.lazySingleton<_i44.IRegisterDataStore>(
      () => _i45.RegisterDataStoreImpl(get<_i32.RegisterApiService>()));
  gh.lazySingleton<_i46.IRegisterRepository>(
      () => _i47.RegisterRepository(get<_i44.IRegisterDataStore>()));
  gh.lazySingleton<_i48.ISessionDataStore>(
      () => _i49.SessionDataStoreImpl(get<_i34.SessionApiService>()));
  gh.lazySingleton<_i50.ISessionRepository>(() => _i51.SessionRepository(
      get<_i35.SessionPreferenceManager>(), get<_i48.ISessionDataStore>()));
  gh.lazySingleton<_i52.IUserDetailsDataStore>(
      () => _i53.UserDetailsDataStoreImpl(get<_i36.UserDetailsApiService>()));
  gh.lazySingleton<_i54.IUserDetailsRepository>(() =>
      _i55.UserDetailRepositoryImpl(get<_i52.IUserDetailsDataStore>(),
          get<_i35.SessionPreferenceManager>()));
  gh.factory<_i56.JoinGymCubit>(
      () => _i56.JoinGymCubit(get<_i35.SessionPreferenceManager>()));
  gh.factory<_i57.LogOutCubit>(
      () => _i57.LogOutCubit(get<_i50.ISessionRepository>()));
  gh.factory<_i58.LoginBloc>(() => _i58.LoginBloc(
      get<_i50.ISessionRepository>(),
      get<_i54.IUserDetailsRepository>(),
      get<_i42.IAppConfigRepository>()));
  gh.factory<_i59.RegisterBloc>(
      () => _i59.RegisterBloc(get<_i46.IRegisterRepository>()));
  gh.factory<_i60.SplashBloc>(() => _i60.SplashBloc(
      get<_i50.ISessionRepository>(),
      get<_i54.IUserDetailsRepository>(),
      get<_i42.IAppConfigRepository>()));
  gh.factory<_i61.UserProfileBloc>(() => _i61.UserProfileBloc(
      get<_i54.IUserDetailsRepository>(),
      get<_i35.SessionPreferenceManager>()));
  return get;
}

class _$NetworkModule extends _i62.NetworkModule {}

class _$RegisterModule extends _i63.RegisterModule {}
