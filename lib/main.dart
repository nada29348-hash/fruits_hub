import 'package:flutter/material.dart';
import 'package:fruits_e_commerce/core/helper_functions/on_generate_route.dart';
import 'package:fruits_e_commerce/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashView()  ==,
      onGenerateRoute: OnGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
