import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customTextStyle(
        {double size = 14,
        FontWeight weight = FontWeight.normal,
        Color color = Colors.black,
        TextDecoration decoration = TextDecoration.none}) =>
    GoogleFonts.inter(
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
      decoration: decoration,
    );
