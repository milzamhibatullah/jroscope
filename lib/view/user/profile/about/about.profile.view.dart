import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/base.theme.dart';
import '../../../theme/style/custom.text.style.dart';
import '../../../theme/widget/gold.overlay.widget.dart';
import 'form.about.profile.dart';

class AboutProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 8.r),
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
                            style: customTextStyle(color: Colors.white),
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
    );
  }

  // ///set widget for default content
  // Widget _defaultSectionContent(text) => Text(
  //       text,
  //       style: customTextStyle(color: Colors.white.withOpacity(.52)),
  //     );
}
