// env.dart
import 'dart:io';

const Map<String, String> environment = <String, String>{
  'spotifyClientId': String.fromEnvironment('SPOTIFY_CLIENT_ID'),
  'spotifyClientSecret': String.fromEnvironment('SPOTIFY_CLIENT_SECRET'),
};
