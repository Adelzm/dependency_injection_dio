part of '../screens/home_screen.dart';

class _FactUi extends StatelessWidget {
  const _FactUi({super.key, required this.fact});

  final Fact fact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fact.fact),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Fun fact, the above fact has: ${fact.length} characters',
          ),
          const SizedBox(
            height: 15,
          ),
          const _MainButton(),
        ],
      ),
    );
  }
}
