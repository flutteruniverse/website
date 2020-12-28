class EpisodeReferences {
  final int episode;
  final int season;
  final List<References> references;

  EpisodeReferences({
    this.episode,
    this.season,
    this.references,
  });
}

class References {
  final int id;
  final Reference reference;

  References({
    this.id,
    this.reference,
  });
}

class Reference {
  final String link;
  final TypeReference type;
  final String title;
  final List<String> tags;

  Reference({
    this.link,
    this.type,
    this.title,
    this.tags,
  });
}

enum TypeReference {
  news,
  widget,
  package,
  tip,
  knowledgeSource,
  bugsDebugs,
  jobs,
  apps,
}
