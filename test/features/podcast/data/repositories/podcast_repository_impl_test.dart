import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/podcast/data/datasources/podcast_datasource.dart';
import 'package:website/features/podcast/data/models/episode_model.dart';
import 'package:website/features/podcast/data/models/episode_references_model.dart';
import 'package:website/features/podcast/data/models/podcast_info_model.dart';
import 'package:website/features/podcast/data/repositories/podcast_repository_impl.dart';

class PodcastDatasourceMock extends Mock implements PodcastDatasource {}

void main() {
  final datasource = PodcastDatasourceMock();
  final repository = PodcastRepositoryImpl(datasource);
  test('should return a list of result model', () async {
    when(datasource.getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt'))
        .thenAnswer((_) async => <EpisodeModel>[]);

    var episodeList = await repository.getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt');
    expect(episodeList, isA<List<EpisodeModel>>());
  });
  test('should return a list of episodes references model', () async {
    when(datasource.getEpisodesReferences('location'))
        .thenAnswer((_) async => <EpisodeReferencesModel>[]);

    var episodeList = await repository.getEpisodesReferences('location');
    expect(episodeList, isA<List<EpisodeReferencesModel>>());
  });
  test('should return a podcast info model', () async {
    when(datasource.getPodcastInfo('4AlxqGkkrqe0mfIx3Mi7Xt'))
        .thenAnswer((_) async => PodcastInfoModel());

    var episodeList = await repository.getPodcastInfo('4AlxqGkkrqe0mfIx3Mi7Xt');
    expect(episodeList, isA<PodcastInfoModel>());
  });
}
