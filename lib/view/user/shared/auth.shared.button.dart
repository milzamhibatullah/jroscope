import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthSharedButton extends StatelessWidget {
  final Widget child;
  final bool changedState;
  const AuthSharedButton({Key? key, required this.child, required this.changedState}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.r,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9.r),
        boxShadow:  [
          BoxShadow(
            color: changedState?Colors.white:Colors.black,
            offset: const Offset(0.0, 0.0),
            blurRadius:changedState?25: 0,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            const Color(0xFF62CDCB).withOpacity(changedState?1:.5),
            const Color(0xFF4599DB).withOpacity(changedState?1:.5),
          ],
        ),
      ),
      child: child,
    );
  }
}
