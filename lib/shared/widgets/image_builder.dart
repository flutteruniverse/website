import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const String podcastCover = 'assets/img/podcast_cover.png';

class ImageBuilder extends StatelessWidget {
  const ImageBuilder({
    Key? key,
    required this.url,
    this.name = '',
  }) : super(key: key);

  final String name;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8.0.sp)),
      child: kIsWeb
          ? OnlineImage(url: _checkUrl(url), name: name)
          : CachedImage(url: _checkUrl(url), name: name),
    );
  }
}

class OnlineImage extends StatelessWidget {
  const OnlineImage({
    Key? key,
    required this.url,
    this.name = '',
  }) : super(key: key);

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      semanticLabel: name,
      errorBuilder: (context, error, stackTrace) => Image.asset(podcastCover),
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    (loadingProgress.expectedTotalBytes ?? 1)
                : null,
          ),
        );
      },
    );
  }
}

class CachedImage extends StatelessWidget {
  const CachedImage({
    Key? key,
    required this.url,
    this.name = '',
  }) : super(key: key);

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Image.asset(
        podcastCover,
        semanticLabel: name,
      ),
    );
  }
}

String _checkUrl(String url) => url.isNotEmpty ? url : podcastCover;
