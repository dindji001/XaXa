import 'package:flutter/material.dart';

import '../../utils/appTheme.dart';
import '../../utils/navigation_service.dart';
import '../widgets/ProgressBarDemo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.color.primaryColor,
        body: Center(
          child: Image.asset(
            AppTheme.asset.logo,
            width: width(context) * 0.5,
          ),
        ));
  }
}
