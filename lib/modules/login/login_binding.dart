import 'package:get/instance_manager.dart';
import 'package:iso_test/data/local/local_login_model.dart';
import 'package:iso_test/modules/login/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalLoginModelRepository>(() => LocalLoginModelRepository());
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
