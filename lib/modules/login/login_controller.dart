import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iso_test/data/local/local_login_model.dart';
import 'package:iso_test/utils/extensions/get_extension.dart';

class LoginController extends GetxController {
  final LocalLoginModelRepository repository =
      Get.find<LocalLoginModelRepository>();

  late String _username;
  late String _password;

  void onUsernameChanged(String username) {
    _username = username.trim();
  }

  void onPasswordChanged(String password) {
    _password = password.trim();
  }

  sumit() async {
    if (_username.trim.toString().isEmpty) {
      Get.snackbar('Hi', 'Your Email not be null!');
      return;
    }

    if (_password.trim.toString().isEmpty) {
      Get.snackbar('Hi', 'Your Password not be null!');
      return;
    }

    Get.loading();

    print("需要解决登录问题");
  }
}
