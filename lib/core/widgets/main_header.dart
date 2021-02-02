import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/img/podcast_icon.png',
          width: 15.0.w,
        ),
        Text(
          'Universo Flutter',
          style: TextStyle(fontSize: 24.0.sp),
        )
      ],
    );
  }
}
