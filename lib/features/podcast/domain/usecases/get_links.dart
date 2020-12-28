import '../entities/episode_references.dart';
import '../repositories/podcast_repository.dart';

// ignore: one_member_abstracts
abstract class GetLinks {
  Future<List<EpisodeReferences>> call(String showId);
}

class GetLinksImpl implements GetLinks {
  final PodcastRepository repository;

  GetLinksImpl(this.repository);

  @override
  Future<List<EpisodeReferences>> call(String location) async {
    return await repository.getEpisodesReferences(location);
  }
}
