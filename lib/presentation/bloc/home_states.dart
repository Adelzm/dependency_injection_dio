import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState.init() = Initial;

  factory HomeState.loading() = Loading;

  factory HomeState.funFact(Fact fact) = FunFact;

  factory HomeState.error(String error) = Error;
}
