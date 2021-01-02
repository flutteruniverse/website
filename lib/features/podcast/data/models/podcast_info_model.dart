import 'dart:convert';

import '../../domain/entities/podcast_info.dart';

class PodcastInfoModel extends PodcastInfo {
  final List<StreamingService> streamingServices;

  PodcastInfoModel({
    this.streamingServices,
  });
}

class StreamingServiceModel extends StreamingService {
  final String url;
  final String title;
  final String imagePath;

  StreamingServiceModel({
    this.url,
    this.title,
    this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'title': title,
      'image_path': imagePath,
    };
  }

  factory StreamingServiceModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return StreamingServiceModel(
      url: map['url'],
      title: map['title'],
      imagePath: map['image_path'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StreamingServiceModel.fromJson(String source) =>
      StreamingServiceModel.fromMap(json.decode(source));
}
