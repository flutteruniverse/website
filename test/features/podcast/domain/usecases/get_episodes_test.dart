import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/podcast/domain/entities/episode.dart';
import 'package:website/features/podcast/domain/repositories/podcast_repository.dart';
import 'package:website/features/podcast/domain/usecases/get_episodes.dart';

class PodcastRepositoryMock extends Mock implements PodcastRepository {}

void main() {
  final repository = PodcastRepositoryMock();
  final usecase = GetEpisodesImpl(repository);
  test('shoud return a list of episodes when call with not empty id', () async {
    when(repository.getEpisodes('4AlxqGkkrqe0mfIx3Mi7Xt'))
        .thenAnswer((_) async => <Episode>[]);

    var episodes = await usecase('4AlxqGkkrqe0mfIx3Mi7Xt');

    expect(episodes, isA<List<Episode>>());
  });
}
