import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/data/networking/i_config.dart';
import 'package:dependency_injection_dio/data/networking/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

abstract class FactClient {
  Future<Fact> randomFact();
}

@Injectable(as: FactClient)
class CatFactClient extends FactClient {
  final Dio dio;
  final IConfig config;
  final RestClient client;

  CatFactClient({
    required this.dio,
    required this.config,
  }) : client = RestClient(dio, baseUrl: config.baseUrl);

  @override
  Future<Fact> randomFact() {
    return client.randomFact();
  }
}
