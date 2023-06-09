part of '../calendar_screen.dart';

class Tablet extends StatelessWidget {
  const Tablet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return const SizedBox(
      child: Center(
        child: Text('Tablet View'),
      ),
    );
  }
}
