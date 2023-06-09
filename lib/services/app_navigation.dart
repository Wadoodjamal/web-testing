import 'package:flutter/material.dart';
import 'package:web_testing/extensions/string_ext.dart';
import 'package:web_testing/screens/calendar_screen/calendar_screen.dart';
import 'package:web_testing/screens/meeting_details/meeting_details.dart';

import '../app_routes.dart';

class AppNavigation {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final data = settings.name!.getRoutingData;

    switch (data.route) {
      case AppRoutes.calendarScreen:
        return _FadeRoute(
          child: const CalendarScreen(),
          settings: settings,
        );

      case AppRoutes.meetingDetails:
        return _FadeRoute(
          child: const MeetingDetailsScreen(),
          settings: settings,
        );

      default:
        return _FadeRoute(
          child: const CalendarScreen(),
          settings: settings,
        );
    }
  }

  Future<dynamic> navigateTo(String route,
      {Map<String, dynamic>? queryParams}) {
    if (queryParams != null) {
      route = Uri(path: route, queryParameters: queryParams).toString();
    }

    return navigatorKey.currentState!.pushNamed(
      route,
      arguments: queryParams,
    );
  }

  Future<dynamic> navigateWithReplacement(String route) async {
    return await navigatorKey.currentState!.pushReplacementNamed(route);
  }

  void goBack() => navigatorKey.currentState!.pop();
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  @override
  final RouteSettings settings;

  _FadeRoute({required this.child, required this.settings})
      : super(
          settings: settings,
          pageBuilder: (context, ani1, ani2) => child,
          transitionsBuilder: (context, ani1, ani2, child) => FadeTransition(
            opacity: ani1,
            child: child,
          ),
        );
}
