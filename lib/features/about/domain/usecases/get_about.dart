import 'package:injectable/injectable.dart';

import '../entities/about.dart';
import '../repositories/about_repository.dart';

abstract class GetAbout {
  Future<About> call(String location);
}

@Injectable(as: GetAbout)
class GetAboutImpl implements GetAbout {
  final AboutRepository repository;

  GetAboutImpl(this.repository);

  @override
  Future<About> call(String location) async {
    return await repository.getAbout(location);
  }
}
