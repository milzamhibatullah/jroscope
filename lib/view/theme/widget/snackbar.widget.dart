import 'package:flutter/material.dart';
import 'package:jroscope/view/theme/style/custom.text.style.dart';

SnackBar snackBarWidget(text, duration) =>SnackBar(
      content: Text(
        text,
        style: customTextStyle(color: Colors.white),
      ),
      duration: Duration(seconds: duration),
    );
