import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:iso_test/modules/home/home.dart';
import 'package:iso_test/modules/login/login.dart';
import 'package:iso_test/routes/app_pages.dart';
import 'package:iso_test/theme/app_theme.dart';
import 'package:iso_test/utils/gloab_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GloabConfig.init();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    builder: (context, child) => Scaffold(
      // Global GestureDetector that will dismiss the keyboard
      body: GestureDetector(
        onTap: () {
          hideKeyboard(context);
        },
        child: child,
      ),
    ),
    theme: appThemeData,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
    // initialBinding: SplashBinding(),
    home: HomePage(),
  ));
}

void hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}
