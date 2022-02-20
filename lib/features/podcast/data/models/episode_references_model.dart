import 'dart:convert';

import '../../domain/entities/episode_references.dart';

class EpisodeReferencesModel extends EpisodeReferences {
  final int episode;
  final int season;
  final List<ReferenceDetailsModel> references;

  EpisodeReferencesModel({
    required this.episode,
    required this.season,
    this.references = const [],
  }) : super(
          episode: episode,
          season: season,
          references: references,
        );

  Map<String, dynamic> toMap() {
    return {
      'episode': episode,
      'season': season,
      'references': references.map((x) => x.toMap()).toList(),
    };
  }

  factory EpisodeReferencesModel.fromMap(Map<String, dynamic> map) {
    return EpisodeReferencesModel(
      episode: map['episode'],
      season: map['season'],
      references: List<ReferenceDetailsModel>.from(
          map['references']?.map((x) => ReferenceDetailsModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory EpisodeReferencesModel.fromJson(String source) =>
      EpisodeReferencesModel.fromMap(json.decode(source));
}

class ReferenceDetailsModel extends ReferenceDetails {
  final String link;
  final String type;
  final String title;

  ReferenceDetailsModel({
    this.link = '',
    this.type = '',
    this.title = '',
  });

  Map<String, String> toMap() {
    return {
      'link': link,
      'type': type,
      'title': title,
    };
  }

  factory ReferenceDetailsModel.fromMap(Map<String, dynamic> map) {
    return ReferenceDetailsModel(
      link: map['link'],
      type: map['type'],
      title: map['title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ReferenceDetailsModel.fromJson(String source) =>
      ReferenceDetailsModel.fromMap(json.decode(source));
}

enum TypeReference {
  news,
  widget,
  package,
  tip,
  knowledgeSource,
  bugDebug,
  job,
  app,
}
