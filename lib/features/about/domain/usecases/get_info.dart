import 'package:injectable/injectable.dart';

import '../entities/about.dart';
import '../repositories/about_repository.dart';

abstract class GetInfo {
  Future<About> call(String location);
}

@Injectable(as: GetInfo)
class GetInfoImpl implements GetInfo {
  final AboutRepository repository;

  GetInfoImpl(this.repository);

  @override
  Future<About> call(String location) async {
    return await repository.getInfo(location);
  }
}
