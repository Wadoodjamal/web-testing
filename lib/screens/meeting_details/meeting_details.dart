import 'package:flutter/material.dart';
import 'package:web_testing/configs/app.dart';
import 'package:web_testing/locator.dart';
import 'package:web_testing/responsive/responsive.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_testing/widgets/appbar.dart';
import 'package:web_testing/widgets/text_fields/custom_textfield.dart';

import '../../app_routes.dart';
import '../../configs/configs.dart';
import '../../services/app_navigation.dart';

part 'views/desktop.dart';
part 'views/tablet.dart';
part 'views/mobile.dart';

class MeetingDetailsScreen extends StatelessWidget {
  const MeetingDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    App.init(context);
    ScreenUtil.init(context, designSize: const Size(1440, 789));

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const Scaffold(
        appBar: CustomAppBar(),
        body: SafeArea(
          child: Responsive(
            mobile: Mobile(),
            tablet: Tablet(),
            desktop: Desktop(),
          ),
        ),
      ),
    );
  }
}
