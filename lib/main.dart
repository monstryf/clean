import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:skys_s_cleanexpress/controllers/auth/sing_in_controller.dart';
import 'package:skys_s_cleanexpress/core/OverrideClass/Overrides.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  // HttpOverrides.global = MyHttpOverrides();
  // HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: theme,
          title: 'skys_s_cleanexpress',
          debugShowCheckedModeBanner: true,
          // debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.loginScreen,
          routes: AppRoutes.routes,
          initialBinding: BindingsBuilder(() {
            Get.put(UserController()); // Inject the controller
          }),
        );
      },
    );
  }
}
