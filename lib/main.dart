import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jetpow/allocator.dart';
import 'package:jetpow/splash_screen.dart';
import 'package:jetpow/ui/screens/home/home_screen.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context);
    return ScreenUtilInit(
      designSize: Size(screenSize.size.width, screenSize.size.height),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        title: 'JetPower',
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
