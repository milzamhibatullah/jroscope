import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';
import 'package:jroscope/view/theme/widget/gold.overlay.widget.dart';
import 'package:jroscope/view/user/shared/auth.shared.button.dart';

class LoginAuthView extends StatelessWidget {
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
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///login title
                Padding(
                  padding: EdgeInsets.only(left: 41.r, top: 64.r),
                  child: Text(
                    'Login',
                    style: customTextStyle(
                        size: 24.0,
                        weight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 8.r,
                ),
                //email or username textfield
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.r),
                  child: TextField(
                    style: customTextStyle(color: Colors.white),
                    decoration:
                        customTextFieldStyle(hintText: 'Enter Username/Email'),
                  ),
                ),

                ///password textfield
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.r),
                  child: TextField(
                    obscureText: true,
                    style: customTextStyle(color: Colors.white),
                    decoration: customTextFieldStyle(
                      hintText: 'Enter Password',
                      suffix: GoldOverlayWidget(
                        widget: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility_off_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                ///login button
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.r),
                  child: GestureDetector(
                    onTap: () {},
                    child: AuthSharedButton(
                      child: Center(
                        child: Text(
                          'Login',
                          style: customTextStyle(
                              color: Colors.white.withOpacity(.5),
                              weight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),

                ///register
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.r,
                    vertical: 16.r,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Account? ',
                        style: customTextStyle(color: Colors.white),
                      ),
                      GoldOverlayWidget(
                        widget: TextButton(
                            onPressed: () {
                              context.go('/auth/register');
                            },
                            child: Text(
                              'Register here',
                              style: customTextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            )),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
