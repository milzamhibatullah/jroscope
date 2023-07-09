import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom.text.style.dart';

InputDecoration customTextFieldStyle(
        {String hintText = '',
        Widget? suffix,
        bool isDense = false,
        TextDirection direction = TextDirection.ltr,
        double contentPadding = 16.0}) =>
    InputDecoration(
      hintText: hintText,
      filled: true,
      isDense: isDense,
      contentPadding: EdgeInsets.all(contentPadding.r),
      suffixIcon: suffix,
      hintTextDirection: direction,
      hintStyle: customTextStyle(
          color: Colors.white.withOpacity(.4),
          weight: FontWeight.w500,
          size: 13.0),
      fillColor: const Color.fromRGBO(255, 255, 255, 0.06),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(9.r),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(9.r),
      ),
    );
