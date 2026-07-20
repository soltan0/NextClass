import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';
import 'package:next_class/router/app_routes.dart';
import 'package:next_class/widgets/app_text_button_widget.dart';
import 'package:next_class/widgets/email_widget.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/padding_constant.dart';
import '../../../widgets/app_elevated_button.dart';
import '../../../widgets/custom_appbar_widget.dart';
import '../../../widgets/password_widget.dart';
import '../../../widgets/text_from_filed_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final passwordController = TextEditingController();
  final surnameController = TextEditingController();
  final numberController = TextEditingController();
  final emailController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backColor,
      appBar: CustomAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RPadding(
              padding: .only(top: 48, left: 16, right: 16),
              child: Row(mainAxisAlignment: .center, children: [RText('Hesabınızı yaradın')]),
            ),
            PaddingConstant(
              padding: .only(top: 45, left: 16, right: 16),
              child: TextFromFiledWidget(
                keyboardType: .name,
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: .circular(12)),
                  labelText: 'Adıniz',
                ),
              ),
            ),
            PaddingConstant(
              padding: .only(top: 45, left: 16, right: 16),
              child: TextFromFiledWidget(
                controller: surnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: .circular(12)),
                  labelText: 'Soyadınız',
                ),
              ),
            ),
            PaddingConstant(
              padding: .only(top: 45, left: 16, right: 16),
              child: TextFromFiledWidget(
                keyboardType: .number,
                controller: numberController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: .circular(12)),
                  labelText: 'Əlaqə Nomresi',
                  prefixIcon: IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PaddingConstant(padding: .symmetric(horizontal: 10), child: RText('🇦🇿')),
                        Icon(Icons.keyboard_arrow_down, color: Colors.black),
                        const RSizedBox(width: 8),
                        RContainer(width: 1, height: 24, color: Colors.grey),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            PaddingConstant(
              padding: .only(left: 16, right: 16, top: 37),
              child: EmailWidget(
                controller: emailController,
                keyboardType: .emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: .circular(12)),
                  labelText: 'Emailiniz',
                ),
              ),
            ),
            PaddingConstant(
              padding: .only(left: 16, right: 16, top: 37),
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
            PaddingConstant(
              padding: .only(left: 16, right: 16, top: 37),
              child: PasswordWidget(
                controller: passwordController,
                keyboardType: .number,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Padding(padding: .only(right: 12, top: 12, bottom: 12), child: Icon(Icons.visibility_off)),
                  ),
                  border: OutlineInputBorder(borderRadius: .circular(12)),
                  labelText: 'Parolunuzu təsdiq edin',
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
                    context.push(AppRoutes.LoginScreen.path);
                  },
                  child: Text('Daxil olun'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
