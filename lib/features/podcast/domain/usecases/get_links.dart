import 'package:injectable/injectable.dart';

import '../entities/episode_references.dart';
import '../repositories/podcast_repository.dart';

abstract class GetLinks {
  Future<List<EpisodeReferences>> call(String showId);
}

@Injectable(as: GetLinks)
class GetLinksImpl implements GetLinks {
  final PodcastRepository repository;

  GetLinksImpl(this.repository);

  @override
  Future<List<EpisodeReferences>> call(String location) async {
    return await repository.getEpisodesReferences(location);
  }
}
