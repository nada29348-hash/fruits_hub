import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 24),
          CustomTextFormField(
            hintText: 'البريد الالكتروني',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            suffixIcon: Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF)),
          ),
        ],
      ),
    );
  }
}
