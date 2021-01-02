class EpisodeReferences {
  int episode;
  int season;
  List<ReferenceDetails> references;

  EpisodeReferences({
    this.episode,
    this.season,
    this.references,
  });
}

class ReferenceDetails {
  String link;
  String type;
  String title;

  ReferenceDetails({
    this.link,
    this.type,
    this.title,
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
