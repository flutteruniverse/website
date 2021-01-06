import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:sizer/sizer.dart';

import '../router/router.dart';

class SideMenuItem {
  final PageRouteInfo destination;
  final IconData iconData;
  final String label;

  const SideMenuItem({
    @required this.destination,
    @required this.iconData,
    @required this.label,
  });
}

class HomePage extends StatelessWidget {
  @override
  Widget build(_) => AutoRouter(
        builder: (context, child) {
          return Material(
            child: SizerUtil.deviceType == DeviceType.Mobile
                ? SmallLayout(
                    child: child,
                    router: context.router,
                  )
                : LargeLayout(
                    child: child,
                    router: context.router,
                  ),
          );
        },
      );
}

class LargeLayout extends StatelessWidget {
  const LargeLayout({Key key, this.child, this.router}) : super(key: key);
  final Widget child;
  final StackRouter router;

  final _sideMenuItems = const <SideMenuItem>[
    SideMenuItem(
      destination: SettingsRoute(),
      iconData: Boxicons.bx_slider,
      label: 'Settings',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 240,
          child: Column(
            children: _sideMenuItems
                .map((item) => ListTile(
                      leading: Icon(item.iconData),
                      selected:
                          item.destination.routeName == router.current?.name,
                      title: Text(item.label),
                      onTap: () => router.navigate(item.destination),
                    ))
                .toList(),
          ),
        ),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16.0.sp),
            child: child,
          ),
        ),
      ],
    );
  }
}

class SmallLayout extends StatelessWidget {
  const SmallLayout({Key key, this.child, this.router}) : super(key: key);
  final Widget child;
  final StackRouter router;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
