import 'package:injectable/injectable.dart';

import '../entities/episode.dart';
import '../repositories/podcast_repository.dart';

// ignore: one_member_abstracts
abstract class GetEpisodes {
  Future<List<Episode>> call(String showId);
}

@Injectable(as: GetEpisodes)
class GetEpisodesImpl implements GetEpisodes {
  final PodcastRepository repository;

  GetEpisodesImpl(this.repository);

  @override
  Future<List<Episode>> call(String showId) async {
    return await repository.getEpisodes(showId);
  }
}
