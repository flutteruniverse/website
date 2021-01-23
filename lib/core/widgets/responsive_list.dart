import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResponsiveList extends StatelessWidget {
  const ResponsiveList({Key key, this.child}) : super(key: key);
  final List<Widget> child;

  @override
  Widget build(BuildContext context) {
    return child.isNotEmpty
        ? ListView.builder(
            itemCount: child.length,
            padding: EdgeInsets.all(10.0.w),
            itemBuilder: (context, index) => SizedBox(
              width: 90.0.w,
              height: 100.0.sp,
              child: child[index],
            ),
          )
        : SizedBox(width: 90.0.w, height: 100.0.sp, child: Text('No data'));
  }
}
