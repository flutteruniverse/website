import 'package:injectable/injectable.dart';

import '../entities/podcast_info.dart';
import '../repositories/podcast_repository.dart';

abstract class GetInfo {
  Future<PodcastInfo> call(String showId);
}

@Injectable(as: GetInfo)
class GetInfoImpl implements GetInfo {
  final PodcastRepository repository;

  GetInfoImpl(this.repository);

  @override
  Future<PodcastInfo> call(String location) async {
    return await repository.getPodcastInfo(location);
  }
}
