import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../config/app.images.config.dart';
import '../../theme/style/custom.text.style.dart';
import '../../theme/style/custom.textfield.style.dart';
import '../../theme/widget/custom.back.button.dart';
import '../../theme/widget/gold.overlay.widget.dart';
import '../shared/auth.shared.button.dart';

class RegisterAuthView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RegisterAuthView();
  }
}
class _RegisterAuthView extends State<RegisterAuthView> {
  bool _isEnabled = false;
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
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(hintText: 'Enter Email'),
                    ),
                  ),
//create username
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.r, vertical: 8.r),
                    child: TextField(
                      style: customTextStyle(color: Colors.white),
                      decoration:
                          customTextFieldStyle(hintText: 'Create Username'),
                    ),
                  ),

                  ///password textfield
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.r),
                    child: TextField(
                      obscureText: true,
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(
                        hintText: 'Create Password',
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

                  ///create confirmation password
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.r, vertical: 8.r),
                    child: TextField(
                      obscureText: true,
                      style: customTextStyle(color: Colors.white),
                      decoration: customTextFieldStyle(
                        hintText: 'Confirm Password',
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

                  ///register login
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
