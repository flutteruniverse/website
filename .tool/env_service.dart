import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final config = <String, dynamic>{
    'spotifyClientId': Platform.environment['SPOTIFY_ID'],
    'spotifyClientSecret': Platform.environment['SPOTIFY_SECRET'],
  };

  final filename = 'lib/config/env.dart';
  await File(filename).writeAsString(
      'const Map<String, String> environment = <String, String>${json.encode(config)};');
}
