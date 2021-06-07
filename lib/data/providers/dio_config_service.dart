import 'dart:io';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iso_test/remote/dio_config.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class DioConfigController extends GetxService {
  Future<DioConfig> init() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String cookisePath = join(appDocDir.path, ".cookise/");
    DioConfig dioConfig = DioConfig(
        baseUrl: "https://cms.chinagoodgifts.com", cookiesPath: cookisePath);
    return dioConfig;
  }
}
