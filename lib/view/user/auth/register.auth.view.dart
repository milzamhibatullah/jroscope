import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/view/theme/widget/snackbar.widget.dart';

import '../../../config/app.images.config.dart';
import '../../theme/style/custom.text.style.dart';
import '../../theme/style/custom.textfield.style.dart';
import '../../theme/widget/custom.back.button.dart';
import '../../theme/widget/gold.overlay.widget.dart';
import '../shared/auth.shared.button.dart';

class RegisterAuthView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterAuthView();
  }
}

class _RegisterAuthView extends State<RegisterAuthView> {
  ///boolean variable to interact with ui
  bool _isEnabled = false;
  bool _passwObscure = true;
  bool _confPassObscure = true;

  ///text field controller variable
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confPasswordController = TextEditingController();

  @override
  void initState() {
    ///initiate listener
    _emailController.addListener(_handleController);
    _userNameController.addListener(_handleController);
    _passwordController.addListener(_handleController);
    _confPasswordController.addListener(_handleController);
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _userNameController.dispose();
    _passwordController.dispose();
    _confPasswordController.dispose();
  }

  ///listener method to handle textfield controller
  void _handleController() {
    var isEnabled = false;
    final email = _emailController.text;
    final userName = _userNameController.text;
    final passw = _passwordController.text;
    final confPassw = _confPasswordController.text;
    if (email.isNotEmpty &&
        userName.isNotEmpty &&
        passw.isNotEmpty &&
        confPassw.isNotEmpty) {
      if (passw == confPassw) {
        isEnabled = true;
      } else {
        isEnabled = false;
      }
    } else {
      isEnabled = false;
    }

    setState(() {
      _isEnabled = isEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: const Key('registerStackWidgetKey'),
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
            title: CustomBackButton(),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///login title
                  Padding(
                    padding: EdgeInsets.only(left: 41.r, top: 24.r),
                    child: Text(
                      'Register',
                      style: customTextStyle(
                          size: 24.0,
                          weight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 24.r,
                  ),
                  //create email
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: TextField(
                      controller: _emailController,
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(hintText: 'Enter Email'),
                    ),
                  ),
                  //create username
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.r, vertical: 8.r),
                    child: TextField(
                      controller: _userNameController,
                      style: customTextStyle(color: Colors.white),
                      decoration:
                          customTextFieldStyle(hintText: 'Create Username'),
                    ),
                  ),

                  ///password textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: _passwObscure,
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(
                        hintText: 'Create Password',
                        suffix: GoldOverlayWidget(
                          widget: IconButton(
                            onPressed: () {
                              setState(() {
                                _passwObscure = _passwObscure ? false : true;
                              });
                            },
                            icon: Icon(
                              _passwObscure
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///create confirmation password
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.r, vertical: 8.r),
                    child: TextField(
                      controller: _confPasswordController,
                      obscureText: _confPassObscure,
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(
                        hintText: 'Confirm Password',
                        suffix: GoldOverlayWidget(
                          widget: IconButton(
                            onPressed: () {
                              setState(() {
                                _confPassObscure =
                                    _confPassObscure ? false : true;
                              });
                            },
                            icon: Icon(
                              _confPassObscure
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///register button
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.r, vertical: 16.r),
                    child: GestureDetector(
                      onTap: () {
                        if (_isEnabled) {
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            snackBarWidget(
                                'Make sure input field is not empty and password should be match',
                                2),
                          );
                        }
                      },
                      child: AuthSharedButton(
                        changedState: _isEnabled,
                        child: Center(
                          child: Text(
                            'Register',
                            style: customTextStyle(
                                color: Colors.white.withOpacity(.5),
                                weight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ),

                  /// login
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
                          'Have an Account? ',
                          style: customTextStyle(color: Colors.white),
                        ),
                        GoldOverlayWidget(
                          widget: TextButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text(
                              'Login here',
                              style: customTextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
