import '../../domain/entities/news.dart';

class NewsItemModel extends NewsItem {
  final String type;
  final String imagePath;
  final DateTime pubDate;
  final String title;
  final String link;

  NewsItemModel({
    this.type,
    this.imagePath,
    this.pubDate,
    this.title,
    this.link,
  });
}
