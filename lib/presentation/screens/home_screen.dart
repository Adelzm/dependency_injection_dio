import 'package:dependency_injection_dio/data/models/fact.dart';
import 'package:dependency_injection_dio/presentation/bloc/home_bloc.dart';
import 'package:dependency_injection_dio/presentation/bloc/home_events.dart';
import 'package:dependency_injection_dio/presentation/bloc/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '../components/main_button.dart';
part '../components/loading.dart';
part '../components/fact_ui.dart';
part '../components/error_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => HomeBloc(),
        child: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(init: () {
                return const Center(
                  child: _MainButton(),
                );
              }, loading: () {
                return const _Loading();
              }, funFact: (fact) {
                return _FactUi(fact: fact);
              }, error: (error) {
                return _ErrorText(error: error);
              });
            },
          ),
        ),
      ),
    );
  }
}
