part of '../screens/home_screen.dart';

class _MainButton extends StatelessWidget {
  const _MainButton();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<HomeBloc>().add(HomeEvent.oneMoreFunFact());
        },
        child: const Text("Hit me baby one more time"));
  }
}
