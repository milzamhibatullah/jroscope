import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jroscope/config/app.images.config.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';
import 'package:jroscope/view/theme/style/custom.textfield.style.dart';
import 'package:jroscope/view/theme/widget/gold.overlay.widget.dart';
import 'package:jroscope/view/user/profile/component/form.about.component.dart';

import '../../theme/base.theme.dart';

class ProfileUserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseTheme.profileBgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          '@johndoe',
          style: customTextStyle(
              color: Colors.white, size: 16.0, weight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_rounded),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///section user card
              SizedBox(
                width: double.infinity,
                height: 190.r,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.r, vertical: 16.r),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    color: BaseTheme.userCardBgDefault,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 16.r,
                          left: 16.r,
                          child: Text(
                            '@johndoe123,',
                            style: customTextStyle(
                                color: Colors.white,
                                size: 16.0,
                                weight: FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              ///about section
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.r,
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    color: BaseTheme.userSectionCardBgColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///row title and button
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'About',
                                style: customTextStyle(
                                  color: Colors.white,
                                  weight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: Image.asset(
                              //     AppImages.editIcon,
                              //     height: 16.r,
                              //   ),
                              // )
                              TextButton(
                                  onPressed: () {},
                                  child: GoldOverlayWidget(
                                    widget: Text(
                                      'Save & Update',
                                      style:
                                          customTextStyle(color: Colors.white),
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 8.r,
                          ),
                          // _defaultSectionContent(
                          //     'Add in your profile to help others know you better'),
                          FormAboutComponent(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              ///interest section
              SizedBox(
                width: double.infinity,
                height: 120.r,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.r, vertical: 8.r),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    color: BaseTheme.userSectionCardBgColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///row title and button
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Interest',
                                style: customTextStyle(
                                  color: Colors.white,
                                  weight: FontWeight.w700,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  AppImages.editIcon,
                                  height: 16.r,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8.r,
                          ),
                          _defaultSectionContent(
                              'Add in your interest to find a better match'),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///set widget for default content
  Widget _defaultSectionContent(text) => Text(
        text,
        style: customTextStyle(color: Colors.white.withOpacity(.52)),
      );
}
