import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/utils/app_colors.dart';
import 'package:fruits_e_commerce/core/utils/app_images.dart';
import 'package:fruits_e_commerce/features/onboarding/presentation/views/widgets/page_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageItem(
          image: Assets.imagesFruitBasket,
          backgroundImage: Assets.imagesFruitBasketBackground,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB.استكشف مجموعتنا الواسعة من الفواكةالطازجه الممتازة و احصل علي افضل العروض والجودةالعالية',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبا بك في',
                style: TextStyle(
                  color: Color(0xff0C0D0D),
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                'HUB',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              Text(
                'Fruit',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ],
          ),
        ),

        PageItem(
          image: Assets.imagesPineapple,
          backgroundImage: Assets.imagesPinableBackgroundImage,
          subtitle:
              'نقدم لك افضل الفواكهه المختارة بعناية.اطلع علي التفاصيل والصور والتقييمات لنتأكد من اختيار الفاكهه المثالية',
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff0C0D0D),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ],
    );
  }
}
