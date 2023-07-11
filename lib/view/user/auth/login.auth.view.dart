import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';
import 'package:jroscope/view/theme/widget/gold.overlay.widget.dart';
import 'package:jroscope/view/theme/widget/snackbar.widget.dart';
import 'package:jroscope/view/user/shared/auth.shared.button.dart';

class LoginAuthView extends StatefulWidget {
  const LoginAuthView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginAuthView();
  }
}

class _LoginAuthView extends State<LoginAuthView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;
  bool _isEnabled = false;

  @override
  void initState() {
    emailController.addListener(_handleTextController);
    passwordController.addListener(_handleTextController);
    super.initState();
  }

  _handleTextController() {
    print(emailController.text);
    print(passwordController.text);
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      setState(() {
        _isEnabled = true;
      });
    } else {
      setState(() {
        _isEnabled = false;
      });
    }
  }

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
                    controller: emailController,
                    key: const Key('emailTextFieldKey'),
                    style: customTextStyle(color: Colors.white),
                    decoration:
                        customTextFieldStyle(hintText: 'Enter Username/Email'),
                  ),
                ),

                ///password textfield
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.r),
                  child: TextField(
                    controller: passwordController,
                    key: const Key('passwordTextFieldKey'),
                    obscureText: _obscureText,
                    style: customTextStyle(color: Colors.white),
                    decoration: customTextFieldStyle(
                      hintText: 'Enter Password',
                      suffix: GoldOverlayWidget(
                        widget: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = _obscureText ? false : true;
                            });
                          },
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_rounded,
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
                    key: const Key('signInButtonKey'),
                    onTap: () {
                      if (emailController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          snackBarWidget(
                              'Username and Password cant be empty', 2),
                        );
                      }

                      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: AuthSharedButton(
                      changedState: _isEnabled,
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
                            key: const Key('registerButtonKey'),
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
