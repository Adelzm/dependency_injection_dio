import 'package:dependency_injection_dio/services/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // the default method name that will be generated
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() {
  $initGetIt(getIt);
}