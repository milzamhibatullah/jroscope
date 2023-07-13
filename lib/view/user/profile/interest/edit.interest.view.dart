import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';
import 'package:jroscope/view/theme/widget/custom.back.button.dart';
import 'package:jroscope/view/theme/widget/gold.overlay.widget.dart';

class EditInterestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.background,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            centerTitle: false,
            title: CustomBackButton(
              callbak: () => context.pop(),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: customTextStyle(color: Colors.blue),
                ),
              )
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.r,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: GoldOverlayWidget(
                      widget: Text(
                        'Tell everyone about yourself',
                        style: customTextStyle(
                            color: Colors.white, weight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.r,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: Text(
                      'What interest you?',
                      style: customTextStyle(
                          color: Colors.white,
                          size: 18.0,
                          weight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 24.r,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: TextField(
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
