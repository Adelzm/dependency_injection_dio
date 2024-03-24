part of '../screens/home_screen.dart';

class _ErrorText extends StatelessWidget {
  const _ErrorText({required this.error});

  final String error;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}
