import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:spotify/spotify.dart';
import 'package:website/core/services/spotify_service.dart';
import 'package:website/podcast/data/datasources/spotify_podcast_datasource.dart';
import 'package:website/podcast/data/models/episode_model.dart';

class SpotifyServiceMock extends Mock implements SpotifyService {}

void main() {
  final spotify = SpotifyServiceMock();
  final datasource = SpotifyPodcastDatasource(spotify);
  test('should return a list of result model', () async {
    when(spotify.shows.episodes('1253456')).thenAnswer((realInvocation) {
      Pages<Episode> pages;
      return pages;
    });

    var episodeList = await datasource.getEpisodes('123456');
    expect(episodeList, isA<List<EpisodeModel>>());
  });
}
