import '../../../core/services/spotify_service.dart';
import '../models/episode_model.dart';
import 'podcast_datasource.dart';

class SpotifyPodcastDatasource implements PodcastDatasource {
  final SpotifyService _spotifyService;

  SpotifyPodcastDatasource(this._spotifyService);

  @override
  Future<List<EpisodeModel>> getEpisodes(String showId) async {
    final spotifyClient = await _spotifyService.spotifyApi;
    try {
      final pagingEpisodes = spotifyClient.shows.episodes(showId, market: 'BR');
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

  @override
  Future<void> getInfo(String showId) {
    throw UnimplementedError();
  }
}
