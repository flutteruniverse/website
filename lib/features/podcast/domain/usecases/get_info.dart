import '../entities/podcast_info.dart';
import '../repositories/podcast_repository.dart';

// ignore: one_member_abstracts
abstract class GetInfo {
  Future<PodcastInfo> call(String showId);
}

class GetInfoImpl implements GetInfo {
  final PodcastRepository repository;

  GetInfoImpl(this.repository);

  @override
  Future<PodcastInfo> call(String showId) async {
    return await repository.getPodcastInfo(showId);
  }
}
