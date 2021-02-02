import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/podcast/domain/entities/podcast_info.dart';
import 'package:website/features/podcast/domain/repositories/podcast_repository.dart';
import 'package:website/features/podcast/domain/usecases/get_info.dart';

class PodcastRepositoryMock extends Mock implements PodcastRepository {}

void main() {
  final repository = PodcastRepositoryMock();
  final usecase = GetInfoImpl(repository);
  test('shoud return a info podcast when call with not empty show id',
      () async {
    when(repository.getPodcastInfo('4AlxqGkkrqe0mfIx3Mi7Xt'))
        .thenAnswer((_) async => PodcastInfo(streamingServices: []));

    var info = await usecase('4AlxqGkkrqe0mfIx3Mi7Xt');

    expect(info, isA<PodcastInfo>());
  });
}
