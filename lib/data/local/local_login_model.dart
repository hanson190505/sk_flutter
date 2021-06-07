import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iso_test/data/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalLoginModelRepository {
  static final String keyLoginModel = "key_login_model";

  static setLoginModel(LoginModel model) {
    SharedPreferences sp = Get.find<SharedPreferences>();
    sp.setString(keyLoginModel, jsonEncode(model.toJson()));
  }

  static getLoginModel() {
    SharedPreferences sp = Get.find<SharedPreferences>();
    try {
      var json = sp.getString(keyLoginModel);
      return LoginModel.fromJson(jsonDecode(json!));
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
