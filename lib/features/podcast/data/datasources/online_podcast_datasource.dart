import 'package:spotify/spotify.dart';

import '../../../../core/services/firebase_service.dart';
import '../models/episode_model.dart';
import '../models/episode_references_model.dart';
import '../models/podcast_info_model.dart';
import 'podcast_datasource.dart';

class OnlinePodcastDatasource implements PodcastDatasource {
  final SpotifyApiBase _spotifyService;
  final FirebaseService _firebaseService;

  OnlinePodcastDatasource(this._spotifyService, this._firebaseService);

  @override
  Future<List<EpisodeModel>> getEpisodes(String showId) async {
    try {
      final pagingEpisodes =
          _spotifyService.shows.episodes(showId, market: 'BR');
      final allEpisodes = await pagingEpisodes.all();
      return allEpisodes
          .map((episode) => EpisodeModel(
                audioLink: episode.audioPreviewUrl,
                description: episode.description,
                episodeId: episode.id,
                externalUrl: episode.externalUrls.spotify,
                pubDate: episode.releaseDate.toString(),
                title: episode.name,
              ))
          .toList();
    } on Exception catch (e) {
      throw UnimplementedError('Error to get Spotify podcast episodes: $e');
    }
  }

  // TODO: Apply firebase service
  @override
  Future<List<EpisodeReferencesModel>> getEpisodesReferences(
      String location) async {
    try {
      return await [
        EpisodeReferencesModel(
          episode: 1,
          references: [],
          season: 1,
        )
      ];
    } on Exception catch (e) {
      throw UnimplementedError('Error to get episode references: $e');
    }
  }

  // TODO: Apply firebase service
  @override
  Future<PodcastInfoModel> getPodcastInfo(String showId) async {
    try {
      return PodcastInfoModel(
        platforms: [],
      );
    } on Exception catch (e) {
      throw UnimplementedError('Error to get podcast info: $e');
    }
  }
}
