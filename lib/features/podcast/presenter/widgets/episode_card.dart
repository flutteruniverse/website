import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/episode.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({Key key, this.episodeItem}) : super(key: key);
  final Episode episodeItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(episodeItem.title),
        subtitle: Text(episodeItem.pubDate.toString()),
        onTap: () => launch(episodeItem.externalUrl),
      ),
    );
  }
}
