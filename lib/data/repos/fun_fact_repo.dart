import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/data/networking/facts_client.dart';
import 'package:injectable/injectable.dart';

abstract class FunFactRepo {
  Future<Fact> oneMoreFactPlease();
}

@Injectable(as: FunFactRepo)
class CatFacts extends FunFactRepo {
  final FactClient factClient;

  CatFacts({required this.factClient});

  @override
  Future<Fact> oneMoreFactPlease() async {
    try {
      return await factClient.randomFact();
    } catch (e) {
      return Fact("The fact is you have an error: ${e.toString()}", -1);
    }
  }
}
