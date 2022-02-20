import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../shared/utils.dart';
import '../../../../shared/widgets/image_builder.dart';
import '../../domain/entities/episode.dart';

class EpisodeCard extends StatelessWidget {
  const EpisodeCard({
    Key? key,
    required this.episodeItem,
  }) : super(key: key);
  final Episode episodeItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0.sp),
        onTap: () => openLink(episodeItem.externalUrl),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              child: ImageBuilder(
                url: episodeItem.imageUrl,
                name: episodeItem.title,
                key: Key(episodeItem.title),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0.sp),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      episodeItem.title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(DateFormat('EEE, d MMMM yyyy')
                        .format(episodeItem.pubDate ?? DateTime.now())),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
