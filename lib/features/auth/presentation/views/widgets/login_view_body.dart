import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_e_commerce/constants.dart';
import 'package:fruits_e_commerce/core/utils/app_colors.dart';
import 'package:fruits_e_commerce/core/utils/app_images.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruits_e_commerce/core/widgets/custom_button.dart';
import 'package:fruits_e_commerce/core/widgets/custom_text_field.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/dont_have_an_account.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(text: 'تسجيل الدخول', onPressed: () {}),
            const SizedBox(height: 33),
            const DontHaveAnAccountWidget(),
            const SizedBox(height: 33),
            const OrDivider(),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesGoogle,
              title: 'تسجيل بواسطة جوجل',
            ),

            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesApple,
              title: 'تسجيل بواسطة ابل',
            ),
            const SizedBox(height: 16),
            SocialLoginButton(
              image: Assets.imagesFaceBook,
              title: 'تسجيل بواسطة فيس بوك',
            ),
          ],
        ),
      ),
    );
  }
}
