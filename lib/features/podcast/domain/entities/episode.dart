class Episode {
  final String title;
  final DateTime? pubDate;
  final String audioLink;
  final String description;
  final String externalUrl;
  final String episodeId;
  final String imageUrl;

  const Episode({
    this.title = '',
    this.pubDate,
    this.audioLink = '',
    this.description = '',
    this.externalUrl = '',
    this.episodeId = '',
    this.imageUrl = '',
  });
}
