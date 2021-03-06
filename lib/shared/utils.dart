import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

Future<void> openLink(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
    log('Launched: $url');
    return;
  }
  throw 'Could not launch $url';
}

Future<void> openApp(String url) async {
  try {
    await launch(url);
    log('Launched: $url');
  } on Exception catch (e) {
    throw 'Could not launch $url because $e';
  }
}
