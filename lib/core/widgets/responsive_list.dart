import 'dart:html';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResponsiveList extends StatelessWidget {
  const ResponsiveList({
    Key key,
    @required this.list,
    @required this.title,
    this.pageToNavigate,
  }) : super(key: key);
  final List<Widget> list;
  final String title;
  final PageRouteInfo pageToNavigate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
              if (pageToNavigate != null)
                IconButton(
                  icon: Icon(Icons.arrow_forward_rounded),
                  onPressed: () => context.router.navigate(pageToNavigate),
                )
            ],
          ),
        ),
        Expanded(
          child: list.isNotEmpty
              ? ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) => SizedBox(
                    width: 100.0.w,
                    height: SizerUtil.deviceType == DeviceType.Mobile
                        ? 90.0.sp
                        : 70.0.sp,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.0.sp),
                      child: list[index],
                    ),
                  ),
                )
              : SizedBox(
                  width: 90.0.w, height: 100.0.sp, child: Text('No data')),
        ),
      ],
    );
  }
}
