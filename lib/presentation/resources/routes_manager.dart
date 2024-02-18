
import 'package:flutter/material.dart';
import 'package:my_advanced_projects/presentation/forget_password/forget_password.dart';
import 'package:my_advanced_projects/presentation/login/login_view.dart';
import 'package:my_advanced_projects/presentation/main/main_view.dart';
import 'package:my_advanced_projects/presentation/register/register_view.dart';
import 'package:my_advanced_projects/presentation/resources/strings_manager.dart';
import 'package:my_advanced_projects/presentation/splash/splash_view.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgetPasswordRoute = "/forgetPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.loginRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      case Routes.registerRoute:
        return MaterialPageRoute(
          builder: (_) => const RegisterView(),
        );
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordView(),
        );
      case Routes.mainRoute:
        return MaterialPageRoute(
          builder: (_) => const MainView(),
        );
        default:
          return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute()
  {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound,),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound,),
        ),
      ),
    );
  }
}
