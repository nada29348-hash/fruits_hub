import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/constants.dart';
import 'package:fruits_e_commerce/core/utils/app_colors.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';
import 'package:fruits_e_commerce/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isTermsAccepted =
      false; //حاله شيك بوكس بتتغير هنا فعشان كدا خلتها statefull

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(
        14,
        0,
      ), //دا عشان يخلي شيك بوكس علي نفس الخط بتاع تيكست فيلد
      child: Row(
        children: [
          CustomCheckBox(
            isChecked: isTermsAccepted,
            onChecked: (value) {
              isTermsAccepted = value;
              widget.onChanged(value);
              setState(() {});
            },
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: ' من خلال انشاء حساب, فأنك توافق علي',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: Color(0XFF949D9E),
                    ),
                  ),
                  TextSpan(
                    text: ' الشروط والاحكام',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' الخاصة',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: '',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' بنا',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
