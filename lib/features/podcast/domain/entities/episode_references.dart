class EpisodeReferences {
  int episode;
  int season;
  List<ReferenceDetails> references;

  EpisodeReferences({
    required this.episode,
    required this.season,
    this.references = const [],
  });
}

class ReferenceDetails {
  String link;
  String type;
  String title;

  ReferenceDetails({
    this.link = '',
    this.type = '',
    this.title = '',
  });
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
