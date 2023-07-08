import 'package:flutter/material.dart';

class GoldOverlayWidget extends StatelessWidget {
  final Widget widget;
  const GoldOverlayWidget({Key? key, required this.widget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const RadialGradient(
          colors: [
            Color(0xFF94783E),
            Color(0xFFF3EDA6),
            Color(0xFFF8FAE5),
            Color(0xFFF8FAE5),
            Color(0xFFD5BE88),
            Color(0xFFF8FAE5),
            Color(0xFFD5BE88),
          ],
        ).createShader(bounds);
      },
      child: widget,
    );
  }
}