import 'package:advo_clear_revamp_family/global/themes/app_themes.dart';
import 'package:advo_clear_revamp_family/global/utils/app_colors.dart';
import 'package:advo_clear_revamp_family/view/auth/sign_in/sign_in_view.dart';
import 'package:advo_clear_revamp_family/view/auth/splash/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.blueColor,
        statusBarIconBrightness: Brightness.light, // For Android Icons
        statusBarBrightness: Brightness.light, // For IOS Icons
        systemNavigationBarColor: AppColors.blueColor,
        systemNavigationBarIconBrightness: Brightness.light));
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const SplashView(),
    );
  }
}
