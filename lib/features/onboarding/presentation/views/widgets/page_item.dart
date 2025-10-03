import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_e_commerce/core/utils/app_text_styles.dart';

class PageItem extends StatelessWidget {
  const PageItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.subtitle,
    required this.title,
    required this.isVisible,
  });
  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                left: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'تخط',
                    style: AppTextStyles.Regular13.copyWith(
                      color: Color(0xff949D9E),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 64),
        title,
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            style: AppTextStyles.SemiBold13.copyWith(color: Color(0xff4E5456)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
