// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_alien/flutter_alien.dart';

import '../features/about/data/datasources/about_datasource.dart';
import '../features/about/domain/repositories/about_repository.dart';
import '../features/about/data/repositories/about_repository_impl.dart';
import '../core/services/firebase_service.dart';
import '../features/about/domain/usecases/get_about.dart';
import '../features/news/domain/usecases/get_all_news.dart';
import '../features/podcast/domain/usecases/get_episodes.dart';
import '../features/podcast/domain/usecases/get_info.dart';
import '../features/podcast/domain/usecases/get_links.dart';
import '../features/about/data/datasources/local_about_datasource.dart';
import '../core/services/local_assets_service.dart';
import '../features/news/data/datasources/news_datasource.dart';
import '../features/news/domain/repositories/news_repository.dart';
import '../features/news/data/repositories/news_repository_impl.dart';
import '../features/news/data/datasources/online_news_datasource.dart';
import '../features/podcast/data/datasources/online_podcast_datasource.dart';
import '../features/podcast/data/datasources/podcast_datasource.dart';
import '../features/podcast/domain/repositories/podcast_repository.dart';
import '../features/podcast/data/repositories/podcast_repository_impl.dart';
import '../core/services/social_service.dart';
import '../core/services/spotify_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<FirebaseService>(() => FirebaseService());
  gh.factory<LocalAssetsService>(() => LocalAssetsService());
  gh.factory<SocialService>(() => registerModule.socialService);
  gh.factory<SpotifyService>(() => registerModule.spotifyService);
  gh.factory<AboutDatasource>(
      () => LocalAboutDatasource(get<LocalAssetsService>()));
  gh.factory<AboutRepository>(
      () => AboutRepositoryImpl(get<AboutDatasource>()));
  gh.factory<GetAbout>(() => GetAboutImpl(get<AboutRepository>()));
  gh.factory<NewsDatasource>(() => OnlineNewsDatasource(get<SocialService>()));
  gh.factory<NewsRepository>(() => NewsRepositoryImpl(get<NewsDatasource>()));
  gh.factory<PodcastDatasource>(() => OnlinePodcastDatasource(
        get<SpotifyService>(),
        get<FirebaseService>(),
        get<LocalAssetsService>(),
      ));
  gh.factory<PodcastRepository>(
      () => PodcastRepositoryImpl(get<PodcastDatasource>()));
  gh.factory<GetAllNews>(() => GetAllNewsImpl(get<NewsRepository>()));
  gh.factory<GetEpisodes>(() => GetEpisodesImpl(get<PodcastRepository>()));
  gh.factory<GetInfo>(() => GetInfoImpl(get<PodcastRepository>()));
  gh.factory<GetLinks>(() => GetLinksImpl(get<PodcastRepository>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
