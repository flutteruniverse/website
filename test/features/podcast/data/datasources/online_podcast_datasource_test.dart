import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:spotify/spotify.dart';
import 'package:spotify/src/spotify_mock.dart';
import 'package:website/core/services/firebase_service.dart';
import 'package:website/core/services/spotify_service.dart';
import 'package:website/features/podcast/data/datasources/online_podcast_datasource.dart';
import 'package:website/features/podcast/data/models/episode_model.dart';
import 'package:website/features/podcast/data/models/episode_references_model.dart';
import 'package:website/features/podcast/data/models/podcast_info_model.dart';

class SpotifyServiceMock extends Mock implements SpotifyService {}

class FirebaseServiceMock extends Mock implements FirebaseService {}

void main() {
  final spotify = SpotifyApiMock(
    SpotifyApiCredentials('clientId', 'clientSecret'),
  );
  final firebaseService = FirebaseServiceMock();
  final datasource = OnlinePodcastDatasource(spotify, firebaseService);
  // test('should return a list of result model', () async {
  //   var episodeList = await datasource.getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt');
  //   expect(episodeList, isA<List<EpisodeModel>>());
  // });
  test('should return a list of episodes references', () async {
    var episodeList = await datasource.getEpisodesReferences('location');
    expect(episodeList, isA<List<EpisodeReferencesModel>>());
  });
  test('should return a podcast info', () async {
    var episodeList = await datasource.getPodcastInfo('4AlxqGkkrqe0mfIx3Mi7Xt');
    expect(episodeList, isA<PodcastInfoModel>());
  });
}
