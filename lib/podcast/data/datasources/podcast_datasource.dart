import '../models/episode_model.dart';

abstract class PodcastDatasource {
  Future<List<EpisodeModel>> getEpisodes(String showId);
  Future<void> getInfo(String showId);
}
