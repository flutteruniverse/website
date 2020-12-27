import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/podcast/data/datasources/podcast_datasource.dart';
import 'package:website/podcast/data/models/episode_model.dart';
import 'package:website/podcast/data/repositories/podcast_repository_impl.dart';

class PodcastDatasourceMock extends Mock implements PodcastDatasource {}

void main() {
  final datasource = PodcastDatasourceMock();
  final repository = PodcastRepositoryImpl(datasource);
  test('should return a list of result model', () async {
    when(datasource.getEpisodes('123456'))
        .thenAnswer((_) async => <EpisodeModel>[]);

    var episodeList = await repository.getEpisodes('123456');
    expect(episodeList, isA<List<EpisodeModel>>());
  });
}
