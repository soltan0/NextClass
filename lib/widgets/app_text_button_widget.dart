import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppTextButtonWidget extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final ButtonStyle? style;
  final void Function()? onPressed;

  const AppTextButtonWidget({super.key, required this.child, this.style, this.width, this.height,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      width: width,
      height: height,
      child: TextButton(onPressed: onPressed, style: style, child: child),
    );
  }
}
