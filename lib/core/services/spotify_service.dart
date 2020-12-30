import 'package:spotify/spotify.dart';

import 'secret_service.dart';

class SpotifyService extends SpotifyApiBase {
  static SpotifyApi _spotifyApi;
  SpotifyService(SpotifyApiCredentials credentials) : super(credentials);

  Future<SpotifyApi> get spotifyApi async {
    if (_spotifyApi != null) return _spotifyApi;
    _spotifyApi = await _configCredentials();
    return _spotifyApi;
  }

  Future<SpotifyApi> _configCredentials() async {
    final enviroment = SecretService.flavorService;
    final credentials = SpotifyApiCredentials(
      enviroment.spotifyClientId,
      enviroment.spotifyClientSecret,
    );

    return SpotifyApi(credentials);
  }
}