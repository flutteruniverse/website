import 'package:flutter_alien/flutter_alien.dart';
import 'package:injectable/injectable.dart';
import 'spotify_service.dart';

@module
abstract class RegisterModule {
  @Injectable()
  SocialService get socialService => SocialService.instance;

  @Injectable()
  SpotifyService get spotifyService => SpotifyService.instance;
}
