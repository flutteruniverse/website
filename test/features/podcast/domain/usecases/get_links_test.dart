import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/podcast/domain/entities/episode_references.dart';
import 'package:website/features/podcast/domain/repositories/podcast_repository.dart';
import 'package:website/features/podcast/domain/usecases/get_links.dart';

class PodcastRepositoryMock extends Mock implements PodcastRepository {}

void main() {
  final repository = PodcastRepositoryMock();
  final usecase = GetLinksImpl(repository);
  test('shoud a list of episode references when call with not empty location',
      () async {
    when(repository.getEpisodesReferences('test/data'))
        .thenAnswer((_) async => <EpisodeReferences>[]);

    var references = await usecase('test/data');

    expect(references, isA<List<EpisodeReferences>>());
  });
}
