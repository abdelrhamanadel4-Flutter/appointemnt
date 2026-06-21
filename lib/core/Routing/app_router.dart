import 'package:appointemnt/features/login/ui/widgets/home_screan.dart';
import 'package:flutter/material.dart';
import 'package:appointemnt/core/Routing/routes.dart';
import 'package:appointemnt/features/onborading/onborading_screan.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnBOARDING:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}