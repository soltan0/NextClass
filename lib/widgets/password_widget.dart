import 'package:flutter/material.dart';

import 'text_from_filed_widget.dart';

class PasswordWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final TextEditingController? controller;

  const PasswordWidget({super.key, this.keyboardType, this.controller, this.decoration = const InputDecoration()});

  @override
  Widget build(BuildContext context) {
    return TextFromFiledWidget(controller: controller, keyboardType: keyboardType, decoration: decoration);
  }
}
