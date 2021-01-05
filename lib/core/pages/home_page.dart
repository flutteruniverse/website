import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _sideMenuItems = const <SideMenuItem>[
    SideMenuItem(
      destination: SettingsRoute(),
      iconData: Icons.settings,
      label: 'Settings',
    )
  ];

  @override
  Widget build(_) => AutoRouter(
        builder: (context, child) {
          return Material(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  buildSideMenu(context),
                  Expanded(child: child),
                ],
              ),
            ),
          );
        },
      );

  Widget buildSideMenu(BuildContext context) {
    final router = context.router;
    return SizedBox(
      width: 240,
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
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
      ),
    );
  }
}
