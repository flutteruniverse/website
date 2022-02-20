import 'package:injectable/injectable.dart';

import '../../../../core/services/firebase_service.dart';
import '../../../../core/services/local_assets_service.dart';
import '../../../../core/services/spotify_service.dart';
import '../models/episode_model.dart';
import '../models/episode_references_model.dart';
import '../models/podcast_info_model.dart';
import 'podcast_datasource.dart';

@Injectable(as: PodcastDatasource)
class OnlinePodcastDatasource implements PodcastDatasource {
  final SpotifyService _spotifyService;
  final FirebaseService _firebaseService;
  final LocalAssetsService _localAssetsService;

  OnlinePodcastDatasource(
    this._spotifyService,
    this._firebaseService,
    this._localAssetsService,
  );

  @override
  Future<List<EpisodeModel>> getEpisodes(String showId) async {
    final spotify = await _spotifyService.spotifyApi;
    try {
      final pagingEpisodes = spotify.shows.episodes(showId, market: 'BR');
      final allEpisodes = await pagingEpisodes.all();
      return allEpisodes
          .map(
            (episode) => EpisodeModel(
              audioLink: episode.audioPreviewUrl ?? '',
              description: episode.description ?? '',
              episodeId: episode.id ?? '',
              externalUrl: episode.externalUrls?.spotify ?? '',
              pubDate: episode.releaseDate,
              title: episode.name ?? '',
              imageUrl: episode.images?[0].url ?? '',
            ),
          )
          .toList();
    } on Exception catch (e) {
      throw UnimplementedError('Error to get Spotify podcast episodes: $e');
    }
  }

  @override
  Future<List<EpisodeReferencesModel>> getEpisodesReferences(
      String location) async {
    try {
      final episodeDocuments =
          await _firebaseService.getAllDocuments<EpisodeReferencesModel>(
        path: location,
        dataFromJson: () =>
            EpisodeReferencesModel(episode: 0, season: 0).toMap(),
        dataToJson: (data) => EpisodeReferencesModel.fromMap(data),
      );
      return episodeDocuments.map((e) => e.data()).toList();
    } on Exception catch (e) {
      throw UnimplementedError('Error to get episode references: $e');
    }
  }

  @override
  Future<PodcastInfoModel> getPodcastInfo(String location) async {
    try {
      final streamingServiceDocuments =
          await _localAssetsService.getJson(file: location);
      return PodcastInfoModel.fromJson(streamingServiceDocuments);
    } on Exception catch (e) {
      throw UnimplementedError('Error to get podcast info: $e');
    }
  }
}
