import '../../domain/entities/episode.dart';

class EpisodeModel extends Episode {
  final String title;
  final DateTime? pubDate;
  final String audioLink;
  final String description;
  final String externalUrl;
  final String episodeId;
  final String imageUrl;

  const EpisodeModel({
    this.title = '',
    this.pubDate,
    this.audioLink = '',
    this.description = '',
    this.externalUrl = '',
    this.episodeId = '',
    this.imageUrl = '',
  });
}
