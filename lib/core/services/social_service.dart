import 'package:injectable/injectable.dart';
import 'spotify_service.dart';

@module
abstract class RegisterModule {
  @Injectable()
  SpotifyService get spotifyService => SpotifyService.instance;
}
