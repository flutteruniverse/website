class PodcastInfo {
  final List<Platforms> platforms;

  PodcastInfo({
    this.platforms,
  });
}

class Platforms {
  final String link;
  final String name;
  final String icon;

  Platforms({
    this.link,
    this.name,
    this.icon,
  });
}
