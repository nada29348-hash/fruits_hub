import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/constants.dart';
import 'package:fruits_e_commerce/core/widgets/custom_button.dart';
import 'package:fruits_e_commerce/core/widgets/custom_text_field.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF)),
            ),
            const SizedBox(height: 16),
            TermsAndConditions(),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'انشاء حساب جديد'),
            const SizedBox(height: 26),
            HaveAnAccount(),
          ],
        ),
      ),
    );
  }
}
