import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../features/podcast/presenter/pages/podcast_page.dart';
import '../widgets/main_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainHeader(),
        SizedBox(height: 8.0.sp),
        Expanded(child: PodcastPage()),
      ],
    );
  }
}
