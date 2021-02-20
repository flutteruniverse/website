import 'dart:convert';

import '../../domain/entities/podcast_info.dart';

class PodcastInfoModel extends PodcastInfo {
  final List<StreamingServiceModel> streamingServices;

  PodcastInfoModel({
    this.streamingServices,
  });

  Map<String, dynamic> toMap() {
    return {
      'streamings': streamingServices?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory PodcastInfoModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PodcastInfoModel(
      streamingServices: List<StreamingServiceModel>.from(
          map['streamings']?.map((x) => StreamingServiceModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory PodcastInfoModel.fromJson(String source) =>
      PodcastInfoModel.fromMap(json.decode(source));
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
