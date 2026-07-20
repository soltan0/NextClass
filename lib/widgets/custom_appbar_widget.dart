import 'package:flutter/material.dart';
import 'package:next_class/core/constants/color_constants.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? onPressed;
  final IconData? icon;
  final double? size;

  const CustomAppBarWidget({super.key, this.onPressed, this.size, this.icon});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorConstants.backColor,
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(icon: Icon(icon), onPressed: onPressed),
          Image.asset('assets/icon/nextclass.png', height: 40),
        ],
      ),
      leadingWidth: 100,
    );
  }
}
