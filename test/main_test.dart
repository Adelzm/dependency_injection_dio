
import 'package:dependency_injection_dio/data/networking/facts_client.dart';
import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/services/injector.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    configureDependencies();
  });

  test('we should be able to do an api call', () async {
    FactClient client = getIt<FactClient>();

    Fact fact = await client.randomFact();

    expect(fact, isNotNull);
    expect(fact.fact, isNotNull);
  });
}