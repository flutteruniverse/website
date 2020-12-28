import '../../domain/entities/podcast_info.dart';

class PodcastInfoModel extends PodcastInfo {
  final List<Platforms> platforms;

  PodcastInfoModel({
    this.platforms,
  });
}
