import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const routeName = 'onboarding';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: OnboardingViewBody()));
  }
}
