import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fruits_e_commerce/core/helper_functions/on_generate_route.dart';
import 'package:fruits_e_commerce/features/splash/presentation/views/splash_view.dart';
import 'package:fruits_e_commerce/generated/l10n.dart';

void main() {
  runApp(FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      // home: SplashView()  ==,
      onGenerateRoute: OnGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
