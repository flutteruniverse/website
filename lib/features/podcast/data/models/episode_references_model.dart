import '../../domain/entities/episode_references.dart';

class EpisodeReferencesModel extends EpisodeReferences {
  final int episode;
  final int season;
  final List<References> references;

  EpisodeReferencesModel({
    this.episode,
    this.season,
    this.references,
  });
}
