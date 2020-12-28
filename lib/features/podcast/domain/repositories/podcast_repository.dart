import '../entities/episode.dart';
import '../entities/episode_references.dart';
import '../entities/podcast_info.dart';

abstract class PodcastRepository {
  Future<List<Episode>> getEpisodes(String showId);
  Future<PodcastInfo> getPodcastInfo(String showId);
  Future<List<EpisodeReferences>> getEpisodesReferences(String location);
}
