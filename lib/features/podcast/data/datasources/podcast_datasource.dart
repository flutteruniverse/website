import '../models/episode_model.dart';
import '../models/episode_references_model.dart';
import '../models/podcast_info_model.dart';

abstract class PodcastDatasource {
  Future<List<EpisodeModel>> getEpisodes(String showId);
  Future<PodcastInfoModel> getPodcastInfo(String location);
  Future<List<EpisodeReferencesModel>> getEpisodesReferences(String location);
}
