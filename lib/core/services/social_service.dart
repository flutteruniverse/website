import 'package:flutter_alien/flutter_alien.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @Injectable()
  SocialService get socialService => SocialService.instance;
}
