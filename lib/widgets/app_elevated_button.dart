import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function()? onPressed;
  final BorderRadius? borderRadius;
  final Color? foregroundColor;
  final double? height;
  final double? width;
  final Widget child;
  final Color? color;

  const AppElevatedButton({
    super.key,
    this.color,
    this.height,
    this.width,
    required this.child,
    this.borderRadius,
    this.foregroundColor, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return RSizedBox(
      height: height,
      width: width,
      child: CupertinoButton(
        onPressed:onPressed,
        pressedOpacity: 1,
        color: color,
        foregroundColor: foregroundColor,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
