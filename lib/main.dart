
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/appTheme.dart';
import 'views/screens/first-page.dart';
import 'views/screens/splashcreen_page.dart';
import 'views/widgets/splash.dart';

void main() async {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppTheme.color.primaryColor,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppTheme.color.primaryColor),
          useMaterial3: true,
          fontFamily: "Poppins"),
      home: SplashWidget(
        child: SplashScreen(),
        nextPage: FirstPage(),
      ),
    );
  }
}
