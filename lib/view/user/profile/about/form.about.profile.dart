import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../theme/base.theme.dart';
import '../../../theme/style/custom.text.style.dart';
import '../../../theme/style/custom.textfield.style.dart';
import '../../../theme/widget/gold.overlay.widget.dart';

class FormAboutComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ///add image section
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///trigger button add
            SizedBox(
              width: 60.r,
              height: 60.r,
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                color: BaseTheme.userCardBgDefault,
                child: InkWell(
                  onTap: () {},
                  child: Center(
                    child: GoldOverlayWidget(
                      widget: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32.r,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.r,
            ),
            Text(
              'Add Image',
              style: customTextStyle(
                color: Colors.white,
                weight: FontWeight.w700,
              ),
            )
          ],
        ),

        SizedBox(
          height: 16.r,
        ),

        ///field
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Display Name:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                      isDense: true,
                      direction: TextDirection.rtl,
                      contentPadding: 14.0,
                      hintText: 'Enter Name'),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8.r,
        ),

        ///field gender
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Gender:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                      isDense: true,
                      contentPadding: 14.0,
                      direction: TextDirection.rtl,
                      hintText: 'Select Gender'),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 8.r,
        ),

        ///field birthday
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Birthday:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                      isDense: true,
                      direction: TextDirection.rtl,
                      contentPadding: 14.0,
                      hintText: 'DD MM YYYY'),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8.r,
        ),

        ///field horoscope
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Horoscope:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                    isDense: true,
                    contentPadding: 14.0,
                    hintText: '--',
                    direction: TextDirection.rtl,
                  ),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 8.r,
        ),

        ///Zodiac
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Zodiac:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                    isDense: true,
                    contentPadding: 14.0,
                    hintText: '--',
                    direction: TextDirection.rtl,
                  ),
                ),
              ),
            )
          ],
        ),

        SizedBox(
          height: 8.r,
        ),

        /// Height
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Height:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                      isDense: true,
                      contentPadding: 14.0,
                      direction: TextDirection.rtl,
                      hintText: 'Add Height'),
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: 8.r,
        ),

        /// Weight
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                'Weight:',
                style: customTextStyle(
                  color: Colors.white.withOpacity(.52),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox(
                width: double.infinity,
                child: TextField(
                  style: customTextStyle(color: Colors.white),
                  decoration: customTextFieldStyle(
                      isDense: true,
                      contentPadding: 12.0,
                      direction: TextDirection.rtl,
                      hintText: 'Add Weight'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.r,
        ),
      ],
    );
  }
}
