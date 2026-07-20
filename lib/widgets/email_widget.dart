import 'package:flutter/material.dart';

import 'text_from_filed_widget.dart';

class EmailWidget extends StatelessWidget {
  final TextInputType? keyboardType;
  final InputDecoration? decoration;
  final TextEditingController? controller;

  const EmailWidget({ super.key, this.keyboardType, this.decoration, this.controller });

   @override
   Widget build(BuildContext context) {
       return TextFromFiledWidget(controller: controller, keyboardType: keyboardType, decoration: decoration);
  }
}