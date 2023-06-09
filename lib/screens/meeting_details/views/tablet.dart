part of '../meeting_details.dart';

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
