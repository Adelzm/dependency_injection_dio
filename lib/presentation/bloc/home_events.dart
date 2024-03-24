import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_events.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {

  factory HomeEvent.oneMoreFunFact() = OneMorePlease;
}