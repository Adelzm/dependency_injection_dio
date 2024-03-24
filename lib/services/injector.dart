import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // the default method name that will be generated
)
void configureDependencies() => $initGetIt(getIt);
