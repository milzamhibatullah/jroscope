import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthSharedButton extends StatelessWidget {
  final Widget child;
  const AuthSharedButton({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.r,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0.0, 0.0),
            blurRadius: 0,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            const Color(0xFF62CDCB).withOpacity(.5),
            const Color(0xFF4599DB).withOpacity(.5),
          ],
        ),
      ),
      child: child,
    );
  }
}
