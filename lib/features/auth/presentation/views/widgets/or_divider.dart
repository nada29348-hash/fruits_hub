import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
        const SizedBox(width: 18),
        Text(
          'أو',
          style: AppTextStyles.semiBold16,
          textAlign: TextAlign.center,
        ),
        const SizedBox(width: 18),
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
      ],
    );
  }
}
