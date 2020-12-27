import '../entities/episode.dart';

abstract class PodcastRepository {
  Future<List<Episode>> getEpisodes(String showId);
  Future<void> getInfo(String showId);
}
