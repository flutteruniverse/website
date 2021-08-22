// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/services/firebase_service.dart' as _i3;
import '../core/services/local_assets_service.dart' as _i4;
import '../core/services/social_service.dart' as _i22;
import '../core/services/spotify_service.dart' as _i8;
import '../features/about/data/datasources/about_datasource.dart' as _i9;
import '../features/about/data/datasources/local_about_datasource.dart' as _i10;
import '../features/about/data/repositories/about_repository_impl.dart' as _i12;
import '../features/about/domain/repositories/about_repository.dart' as _i11;
import '../features/about/domain/usecases/get_about.dart' as _i13;
import '../features/news/data/datasources/news_datasource.dart' as _i7;
import '../features/news/data/repositories/news_repository_impl.dart' as _i6;
import '../features/news/domain/repositories/news_repository.dart' as _i5;
import '../features/news/domain/usecases/get_all_news.dart' as _i14;
import '../features/podcast/data/datasources/online_podcast_datasource.dart'
    as _i16;
import '../features/podcast/data/datasources/podcast_datasource.dart' as _i15;
import '../features/podcast/data/repositories/podcast_repository_impl.dart'
    as _i18;
import '../features/podcast/domain/repositories/podcast_repository.dart'
    as _i17;
import '../features/podcast/domain/usecases/get_episodes.dart' as _i19;
import '../features/podcast/domain/usecases/get_info.dart' as _i20;
import '../features/podcast/domain/usecases/get_links.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.FirebaseService>(() => _i3.FirebaseService());
  gh.factory<_i4.LocalAssetsService>(() => _i4.LocalAssetsService());
  gh.factory<_i5.NewsRepository>(
      () => _i6.NewsRepositoryImpl(get<_i7.NewsDatasource>()));
  gh.factory<_i8.SpotifyService>(() => registerModule.spotifyService);
  gh.factory<_i9.AboutDatasource>(
      () => _i10.LocalAboutDatasource(get<_i4.LocalAssetsService>()));
  gh.factory<_i11.AboutRepository>(
      () => _i12.AboutRepositoryImpl(get<_i9.AboutDatasource>()));
  gh.factory<_i13.GetAbout>(
      () => _i13.GetAboutImpl(get<_i11.AboutRepository>()));
  gh.factory<_i14.GetAllNews>(
      () => _i14.GetAllNewsImpl(get<_i5.NewsRepository>()));
  gh.factory<_i15.PodcastDatasource>(() => _i16.OnlinePodcastDatasource(
      get<_i8.SpotifyService>(),
      get<_i3.FirebaseService>(),
      get<_i4.LocalAssetsService>()));
  gh.factory<_i17.PodcastRepository>(
      () => _i18.PodcastRepositoryImpl(get<_i15.PodcastDatasource>()));
  gh.factory<_i19.GetEpisodes>(
      () => _i19.GetEpisodesImpl(get<_i17.PodcastRepository>()));
  gh.factory<_i20.GetInfo>(
      () => _i20.GetInfoImpl(get<_i17.PodcastRepository>()));
  gh.factory<_i21.GetLinks>(
      () => _i21.GetLinksImpl(get<_i17.PodcastRepository>()));
  return get;
}

class _$RegisterModule extends _i22.RegisterModule {}
