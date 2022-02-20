import 'package:auto_route/auto_route.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../shared/utils.dart';
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

class LayoutPage extends StatelessWidget {
  @override
  Widget build(_) => AutoRouter(
        builder: (context, child) {
          return Material(
            child: Stack(
              fit: StackFit.expand,
              children: [
                isExtraSmallScreen(context)
                    ? SmallLayout(
                        child: child,
                        router: context.router,
                      )
                    : LargeLayout(
                        child: child,
                        router: context.router,
                      ),
              ],
            ),
          );
        },
      );
}

class LargeLayout extends StatelessWidget {
  LargeLayout({Key key, this.child, this.router}) : super(key: key);
  final Widget child;
  final StackRouter router;

  final _sideMenuItems = <SideMenuItem>[
    SideMenuItem(
      destination: HomeRoute(),
      iconData: Icons.home,
      label: 'Home',
    ),
    SideMenuItem(
      destination: PodcastRoute(),
      iconData: Icons.speaker,
      label: 'Podcast',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
          width: 25.0.w,
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
            padding: EdgeInsets.all(12.0.sp),
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
    // ignore: omit_local_variable_types
    final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0.sp),
          child: child,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: FabCircularMenu(
            key: fabKey,
            children: [
              IconButton(
                icon: Icon(Icons.speaker),
                onPressed: () {
                  fabKey.currentState.close();
                  router.navigate(PodcastRoute());
                },
              ),
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  fabKey.currentState.close();
                  router.navigate(HomeRoute());
                },
              ),
            ],
            alignment: Alignment.bottomLeft,
            ringColor: Theme.of(context).colorScheme.primary.withOpacity(0.95),
            fabMargin: const EdgeInsets.only(bottom: 32.0),
            animationDuration: Duration(milliseconds: 400),
            ringDiameter: 200,
            ringWidth: 42,
            fabSize: 56,
          ),
        )
      ],
    );
  }
}
