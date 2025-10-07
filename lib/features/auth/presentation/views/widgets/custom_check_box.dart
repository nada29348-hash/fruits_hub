import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:fruits_e_commerce/core/utils/app_colors.dart';
import 'package:fruits_e_commerce/core/utils/app_images.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChecked,
  });
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChecked(!isChecked); //toogle boolean
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isChecked ? Colors.transparent : const Color(0XFFDCDEDE),
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          color: isChecked ? AppColors.primaryColor : Colors.white,
        ),
        child: SvgPicture.asset(Assets.imagesCheck),
      ),
    );
  }
}
