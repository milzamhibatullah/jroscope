import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:jroscope/bloc/user/auth/login/login.bloc.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';
import 'package:jroscope/view/theme/widget/gold.overlay.widget.dart';
import 'package:jroscope/view/theme/widget/snackbar.widget.dart';
import 'package:jroscope/view/user/shared/auth.shared.button.dart';

class LoginAuthView extends StatelessWidget {
  const LoginAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.background,
          fit: BoxFit.fill,
        ),
        BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) => Scaffold(
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.r, vertical: 16.r),
                          child: TextField(
                            key: const Key('emailTextFieldKey'),
                            onChanged: (value) => context.read<LoginBloc>().add(
                                  LoginEvent.emailChange(value),
                                ),
                            style: customTextStyle(color: Colors.white),
                            decoration: customTextFieldStyle(
                                hintText: 'Enter Username/Email'),
                          ),
                        ),

                        ///password textfield
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.r),
                          child: TextField(
                            key: const Key('passwordTextFieldKey'),
                            obscureText: state.maybeWhen(
                                (visibilty, password, email) => visibilty,
                                orElse: () => true),
                            style: customTextStyle(color: Colors.white),
                            decoration: customTextFieldStyle(
                              hintText: 'Enter Password',
                              suffix: GoldOverlayWidget(
                                widget: IconButton(
                                  onPressed: () {
                                    context.read<LoginBloc>().add(
                                        const LoginEvent.passwordVisibility());
                                  },
                                  icon: Icon(
                                    state.maybeWhen(
                                        (visibilty, password, email) =>
                                            visibilty
                                                ? Icons.visibility_rounded
                                                : Icons.visibility_off_rounded,
                                        orElse: () =>
                                            Icons.visibility_off_rounded),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        ///login button
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.r, vertical: 16.r),
                          child: GestureDetector(
                            key: const Key('signInButtonKey'),
                            onTap: () {
                              state.maybeWhen((visibilty, password, email) {
                                if (email.isNotEmpty && password.isNotEmpty) {
                                  context
                                      .read<LoginBloc>()
                                      .add(const LoginEvent.login());
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarWidget(
                                        'Username and Password cant be empty',
                                        2),
                                  );
                                }
                              }, orElse: () {});

                              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            },
                            child: AuthSharedButton(
                              changedState: state.maybeWhen(
                                (visibilty, password, email) =>
                                    email.isNotEmpty && password.isNotEmpty
                                        ? true
                                        : false,
                                orElse: () => false,
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
                )),
      ],
    );
  }
}
