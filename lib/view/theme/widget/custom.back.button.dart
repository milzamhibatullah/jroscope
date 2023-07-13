import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../style/custom.text.style.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback callbak;

  const CustomBackButton({super.key, required this.callbak});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: callbak,
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      label: Text(
        'Back',
        style: customTextStyle(
            color: Colors.white, size: 14.0, weight: FontWeight.w700),
      ),
    );
  }
}
