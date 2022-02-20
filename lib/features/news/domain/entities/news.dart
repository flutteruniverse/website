class NewsItem {
  final String type;
  final String imagePath;
  final DateTime pubDate;
  final String title;
  final String link;

  NewsItem({
    this.type = '',
    this.imagePath = '',
    required this.pubDate,
    this.title = '',
    this.link = '',
  });
}
