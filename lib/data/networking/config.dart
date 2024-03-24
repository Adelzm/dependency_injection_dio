import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get baseUrl;

  Map<String, String> get headers;

  String get path;
}

@named
@Injectable(as: IConfig)
class CatConfig extends IConfig {
  @override
  String get baseUrl => "https://catfact.ninja/";

  @override
  Map<String, String> get headers => {};

  @override
  String get path => 'fact';
}

@named
@Injectable(as: IConfig)
class ChuckConfig extends IConfig {
  @override
  String get baseUrl => "https://api.chucknorris.io/";

  @override
  Map<String, String> get headers => {};

  @override
  String get path => 'jokes/random';
}
