class PodcastInfo {
  final List<StreamingService> streamingServices;

  PodcastInfo({
    this.streamingServices,
  });
}

class StreamingService {
  final String url;
  final String title;
  final String imagePath;

  StreamingService({
    this.url,
    this.title,
    this.imagePath,
  });
}
