import 'package:appointemnt/core/Routing/app_router.dart';
import 'package:appointemnt/core/Routing/routes.dart';
import 'package:appointemnt/core/Theming/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  DocApp({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
        ),
        initialRoute: Routes.OnBOARDING
        
      ),

    
    );
  }
}
