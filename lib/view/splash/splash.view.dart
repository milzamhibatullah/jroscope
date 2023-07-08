import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jroscope/config/app.images.config.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.background),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Image.asset(
            AppImages.logo,
            height: 64.0.r,
          ),
        ),
      ),
    );
  }
}
