import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/bloc/user/auth/register/register.bloc.dart';
import 'package:jroscope/view/theme/widget/snackbar.widget.dart';

import '../../../config/app.images.config.dart';
import '../../theme/style/custom.text.style.dart';
import '../../theme/style/custom.textfield.style.dart';
import '../../theme/widget/custom.back.button.dart';
import '../../theme/widget/gold.overlay.widget.dart';
import '../shared/auth.shared.button.dart';

class RegisterAuthView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      key: const Key('registerStackWidgetKey'),
      children: [
        Image.asset(
          AppImages.background,
          fit: BoxFit.fill,
        ),
        BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return Scaffold(
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
                          onChanged: (value) =>
                              context.read<RegisterBloc>().add(
                                    RegisterEvent.emailChange(value),
                                  ),
                          style: customTextStyle(color: Colors.white),
                          decoration:
                              customTextFieldStyle(hintText: 'Enter Email'),
                        ),
                      ),
                      //create username
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.r, vertical: 8.r),
                        child: TextField(
                          style: customTextStyle(color: Colors.white),
                          onChanged: (value) =>
                              context.read<RegisterBloc>().add(
                                    RegisterEvent.userNameChange(value),
                                  ),
                          decoration:
                              customTextFieldStyle(hintText: 'Create Username'),
                        ),
                      ),

                      ///password textfield
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.r),
                        child: TextField(
                          obscureText: state.passwordSecured,
                          style: customTextStyle(color: Colors.white),
                          onChanged: (value) =>
                              context.read<RegisterBloc>().add(
                                    RegisterEvent.passwordChange(value),
                                  ),
                          decoration: customTextFieldStyle(
                            hintText: 'Create Password',
                            suffix: GoldOverlayWidget(
                              widget: IconButton(
                                onPressed: () {
                                  context.read<RegisterBloc>().add(
                                      const RegisterEvent.passwordSecured());
                                },
                                icon: Icon(
                                  state.passwordSecured
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.r, vertical: 8.r),
                        child: TextField(
                          obscureText: state.confirmPasswordSecured,
                          style: customTextStyle(color: Colors.white),
                          onChanged: (value) =>
                              context.read<RegisterBloc>().add(
                                    RegisterEvent.confirmPasswordChange(value),
                                  ),
                          decoration: customTextFieldStyle(
                            hintText: 'Confirm Password',
                            suffix: GoldOverlayWidget(
                              widget: IconButton(
                                onPressed: () {
                                  context.read<RegisterBloc>().add(
                                      const RegisterEvent
                                          .confirmPasswordSecure());

                                  if (state.isSuccess) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      snackBarWidget(
                                          'Successfully register, login now!',
                                          3),
                                    );
                                  }
                                },
                                icon: Icon(
                                  state.confirmPasswordSecured
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
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.r, vertical: 16.r),
                        child: GestureDetector(
                          onTap: () {
                            if (state.email.isNotEmpty &&
                                state.username.isNotEmpty &&
                                state.password.isNotEmpty &&
                                state.confirmPassword.isNotEmpty &&
                                (state.password == state.confirmPassword)) {
                              context
                                  .read<RegisterBloc>()
                                  .add(const RegisterEvent.register());
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                snackBarWidget(
                                    'Make sure input field is not empty and password should be match',
                                    2),
                              );
                            }
                          },
                          child: AuthSharedButton(
                            changedState: state.email.isNotEmpty &&
                                    state.username.isNotEmpty &&
                                    state.password.isNotEmpty &&
                                    state.confirmPassword.isNotEmpty &&
                                    (state.password == state.confirmPassword)
                                ? true
                                : false,
                            child: Center(
                              child: Text(
                                'Register',
                                style: customTextStyle(
                                    color: Colors.white,
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
                      ),
                      state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
            );
          },
          buildWhen: (previous, current) {
            if (current.isSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                snackBarWidget('Successfully register, login now!', 3),
              );
              context.pop();
            }
            return true;
          },
        ),
      ],
    );
  }
}
