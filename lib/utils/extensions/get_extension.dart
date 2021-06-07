import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:iso_test/widgets/loading_dialog.dart';

extension GetExtension on GetInterface {
  dismiss() {
    // null-safe
    if (Get.isDialogOpen!) {
      Get.back();
    }
  }

  loading() {
    if (Get.isDialogOpen!) {
      Get.back();
    }
    Get.dialog(LoadingDialog());
  }
}
