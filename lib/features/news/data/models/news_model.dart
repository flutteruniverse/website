import '../../domain/entities/news.dart';

class NewsItemModel extends NewsItem {
  final String type;
  final String imagePath;
  final DateTime pubDate;
  final String title;
  final String link;

  NewsItemModel({
    this.type = '',
    this.imagePath = '',
    required this.pubDate,
    this.title = '',
    this.link = '',
  }) : super(
          pubDate: pubDate,
          imagePath: imagePath,
          link: link,
          title: title,
          type: type,
        );
}
