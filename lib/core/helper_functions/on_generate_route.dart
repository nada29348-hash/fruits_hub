import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/login_view.dart';
import 'package:fruits_e_commerce/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruits_e_commerce/features/splash/presentation/views/splash_view.dart';

Route<dynamic> OnGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
