import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';

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
                      suffix: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const RadialGradient(
                            colors: [
                              Color(0xFF94783E),
                              Color(0xFFF3EDA6),
                              Color(0xFFF8FAE5),
                              Color(0xFFF8FAE5),
                              Color(0xFFD5BE88),
                              Color(0xFFF8FAE5),
                              Color(0xFFD5BE88),
                            ],
                          ).createShader(bounds);
                        },
                        child: const Icon(
                          Icons.visibility_off_outlined,
                          color: Colors.white,
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
                    child: Container(
                      height: 45.r,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 0,
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF62CDCB).withOpacity(.5),
                            const Color(0xFF4599DB).withOpacity(.5),
                          ],
                        ),
                      ),
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

                ///forgot password
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
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const RadialGradient(
                            colors: [
                              Color(0xFF94783E),
                              Color(0xFFF3EDA6),
                              Color(0xFFF8FAE5),
                              Color(0xFFF8FAE5),
                              Color(0xFFD5BE88),
                              Color(0xFFF8FAE5),
                              Color(0xFFD5BE88),
                            ],
                          ).createShader(bounds);
                        },
                        child: Text(
                          'Register here',
                          style: customTextStyle(color: Colors.white),
                        ),
                      )
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
