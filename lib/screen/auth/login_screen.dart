import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:next_class/core/constants/color_constants.dart';
import 'package:next_class/core/constants/padding_constant.dart';
import 'package:next_class/router/app_routes.dart';

import '../../widgets/app_elevated_button.dart';
import '../../widgets/app_text_button_widget.dart';
import '../../widgets/custom_appbar_widget.dart';
import '../../widgets/password_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backColor,
      appBar: CustomAppBarWidget(),
      body: Column(
        children: [
          RText('Xoş gəldiniz'),
          RSizedBox(height: 24),
          PaddingConstant(
            padding: .only(top: 45, left: 16, right: 16),
            child: PasswordWidget(
              controller: emailController,
              keyboardType: .number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Padding(padding: .only(right: 12, top: 12, bottom: 12), child: Icon(Icons.visibility_off)),
                ),
                border: OutlineInputBorder(borderRadius: .circular(12)),
                labelText: 'Emailiniz',
              ),
            ),
          ),
          PaddingConstant(
            padding: .only(top: 45, left: 16, right: 16),
            child: PasswordWidget(
              controller: passwordController,
              keyboardType: .number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Padding(padding: .only(right: 12, top: 12, bottom: 12), child: Icon(Icons.visibility_off)),
                ),
                border: OutlineInputBorder(borderRadius: .circular(12)),
                labelText: 'Parolunuz',
              ),
            ),
          ),
          Padding(
            padding: .only(top: 32, left: 16, right: 16),
            child: AppElevatedButton(
              onPressed: () {},
              foregroundColor: ColorConstants.backColor,
              borderRadius: .all(.circular(50)),
              color: ColorConstants.buttonColor,
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Text('Qeydiyyatı tamamla'),
            ),
          ),
          Row(
            mainAxisAlignment: .center,
            children: [
              RText('Hesabınız mövcuddur?'),
              AppTextButtonWidget(
                onPressed: () {
                  context.push(AppRoutes.RegisterScreen.path);
                },
                child: Text('Qeydiyyatdan keçin'),
              ),
            ],
          ),
        ],
        
      ),
      
    );
  }
}
