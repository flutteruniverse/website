import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:website/features/about/domain/entities/about.dart';
import 'package:website/features/about/domain/repositories/about_repository.dart';
import 'package:website/features/about/domain/usecases/get_info.dart';

class AboutRepositoryMock extends Mock implements AboutRepository {}

void main() {
  final repository = AboutRepositoryMock();
  final usecase = GetInfoImpl(repository);
  test('shoud return a info about when call usecase', () async {
    when(repository.getInfo('location')).thenAnswer((_) async => About());

    var info = await usecase('location');

    expect(info, isA<About>());
  });
}
