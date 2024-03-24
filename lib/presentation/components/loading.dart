part of '../screens/home_screen.dart';

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(),
      );
  }
}