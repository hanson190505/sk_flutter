import 'package:get/route_manager.dart';
import 'package:iso_test/modules/home/home.dart';
import 'package:iso_test/modules/login/login.dart';
import 'package:iso_test/modules/login/login_binding.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage()),
    GetPage(
        name: Routes.LOGIN, page: () => LoginPage(), binding: LoginBinding()),
  ];
}
