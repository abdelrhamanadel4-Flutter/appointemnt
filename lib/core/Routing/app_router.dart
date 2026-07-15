import 'package:appointemnt/core/di/dependency_injection.dart';
import 'package:appointemnt/features/home/home_screan.dart';
import 'package:appointemnt/features/login/logic/cubit/login_cubit.dart';
import 'package:appointemnt/features/login/login_screan.dart';
import 'package:appointemnt/features/sign_up/logic/cubit/signup_cubit.dart';
import 'package:appointemnt/features/sign_up/sign_up_screan.dart';
import 'package:flutter/material.dart';
import 'package:appointemnt/core/Routing/routes.dart';
import 'package:appointemnt/features/onborading/onborading_screan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnBOARDING:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
         case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child:  SignUpScrean(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScrean());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
