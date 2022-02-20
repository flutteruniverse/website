import '../../config/env.dart';

class SecretService {
  SecretService({
    required this.spotifyClientId,
    required this.spotifyClientSecret,
  });
  final String spotifyClientId;
  final String spotifyClientSecret;

  static SecretService fromJson(Map<String, dynamic> json) {
    return SecretService(
      spotifyClientId: json['spotifyClientId'] as String,
      spotifyClientSecret: json['spotifyClientSecret'] as String,
    );
  }

  static SecretService? _flavorService;
  static SecretService get flavorService {
    if (_flavorService != null) return _flavorService!;
    _flavorService = SecretService.fromJson(environment);
    return _flavorService!;
  }
}
