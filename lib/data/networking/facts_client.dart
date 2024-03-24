import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/data/networking/config.dart';
import 'package:dependency_injection_dio/data/networking/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class FactClient {
  Future<Fact> randomFact();
}

@named
@Injectable(as: FactClient)
class CatFactClient extends FactClient {
  final Dio dio;
  final IConfig config;
  final RestClient client;

  @override
  Future<Fact> randomFact() {
    return client.randomFact(config.path).then((value) => _fromResponse(value.rawResponse));
  }

  Fact _fromResponse(Map<String, dynamic> json) {
    return Fact.fromJson(json);
  }

  CatFactClient({
    required this.dio,
    @Named.from(CatConfig) required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);
}

@named
@Injectable(as: FactClient)
class ChuckFactClient extends CatFactClient {
  ChuckFactClient({
    required super.dio,
    @Named.from(ChuckConfig) required super.config,
  });

  @override
  Fact _fromResponse(Map<String, dynamic> json) {
    String data = "${json['value']}";
    return Fact(data, data.length);
  }
}
