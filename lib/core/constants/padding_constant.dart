import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PaddingConstant extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

   const PaddingConstant({super.key, required this.child, required this.padding, });

  @override
  Widget build(BuildContext context) {
    return RPadding(padding: padding, child: child);
  }
}
