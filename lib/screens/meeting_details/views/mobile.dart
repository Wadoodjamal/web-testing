part of '../meeting_details.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    App.init(context);

    return const SizedBox(
      child: Center(
        child: Text('Mobile View'),
      ),
    );
  }
}
