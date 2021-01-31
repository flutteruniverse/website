import 'package:flutter/foundation.dart';

class Episode {
  final String title;
  final DateTime pubDate;
  final String audioLink;
  final String description;
  final String externalUrl;
  final String episodeId;
  final String imageUrl;

  const Episode({
    @required this.title,
    @required this.pubDate,
    @required this.audioLink,
    @required this.description,
    @required this.externalUrl,
    @required this.episodeId,
    @required this.imageUrl,
  });
}
