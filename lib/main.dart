import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:opentruth/helper/mySize.dart';
import 'package:opentruth/helper/theme_helper.dart';
import 'package:opentruth/views/splash/splash_view.dart';

void main() {
  // runApp(const MyApp());
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return MaterialApp(
      title: 'Open Truth APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Palette.palette1,
        scaffoldBackgroundColor: ThemeColors.black1,
        appBarTheme: const AppBarTheme(
          backgroundColor: ThemeColors.mainColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: ThemeColors.bgColor,
          ),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: ThemeColors.bgColor,
          ),
        ),
      ),
      home: const SplashView(),
    );
  }
}
