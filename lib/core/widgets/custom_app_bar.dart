import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';

AppBar buildAppBar({required String title, context}) {
  return AppBar(
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(Icons.arrow_back_ios, color: Colors.black),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyles.bold19,
      textAlign: TextAlign.center,
    ),
  );
}
