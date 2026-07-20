import 'package:flutter/material.dart';

class TextFromFiledWidget extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final InputDecoration? decoration;

  const TextFromFiledWidget({super.key, this.keyboardType, this.decoration= const InputDecoration(), this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller:controller,
      decoration: decoration,
      );
    
  }
}