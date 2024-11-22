import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nest_heven/features/authentications/screens/onborading/onboarding.dart';
import 'package:nest_heven/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false  ,
      title: 'Nest Heven',
      themeMode: ThemeMode.system,
      theme: NappTheme.lightTheme,
      darkTheme: NappTheme.darkTheme,
      home: const Onboarding(),
    );
  }
}
