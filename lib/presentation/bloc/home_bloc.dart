import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/data/repos/fun_fact_repo.dart';
import 'package:dependency_injection_dio/presentation/bloc/home_events.dart';
import 'package:dependency_injection_dio/presentation/bloc/home_states.dart';
import 'package:dependency_injection_dio/services/injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final factRepo = getIt<FunFactRepo>();

  HomeBloc() : super(HomeState.init()) {
    on<HomeEvent>(_onHomeEvent);
  }
  void _onHomeEvent(HomeEvent event, Emitter<HomeState> emit) async {
    await event.when(oneMoreFunFact: () async {
      emit(HomeState.loading());
      Fact fact = await factRepo.oneMoreFactPlease();
      if (fact.length == -1) {
        emit(HomeState.error(fact.fact));
      } else {
        emit(HomeState.funFact(fact));
      }
    });
  }
}
