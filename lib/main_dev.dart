import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'config/locator.dart';
import 'core/router/router.dart';

Future<void> main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return LayoutBuilder(
      builder: (context, constraints) => OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(constraints, orientation);
          return MaterialApp.router(
            debugShowCheckedModeBanner: true,
            title: 'Universo Flutter | Debug',
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
            builder: (context, child) => child,
          );
        },
      ),
    );
  }
}
