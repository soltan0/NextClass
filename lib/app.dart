import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'router/app_router.dart';

class NC extends StatelessWidget {
  const NC({super.key});

 
  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
       splitScreenMode: true,
      child: MaterialApp.router(
        title: 'NextClass',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        routerConfig: AppRouter.goRouter,
      ),
    );
  }
}