import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/constants.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruits_e_commerce/core/widgets/custom_app_bar.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'تسجيل الدخول', context: context),
      body: const LoginViewBody(),
    );
  }
}
