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
            itemBuilder: (context, index) => SizedBox(
              width: 100.0.w,
              height:
                  SizerUtil.deviceType == DeviceType.Mobile ? 90.0.sp : 70.0.sp,
              child: Padding(
                padding: EdgeInsets.only(bottom: 8.0.sp),
                child: child[index],
              ),
            ),
          )
        : SizedBox(width: 90.0.w, height: 100.0.sp, child: Text('No data'));
  }
}
