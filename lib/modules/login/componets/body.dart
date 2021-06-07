import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iso_test/modules/login/componets/input_field.dart';
import 'package:iso_test/modules/login/componets/password_field.dart';
import 'package:iso_test/modules/login/login_controller.dart';

class Body extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Get.width,
            padding: EdgeInsets.fromLTRB(15.0, 115.0, 0.0, 0.0),
            child: Text('Welcome',
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    )),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 0.0),
                child: Text('Back',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        )),
              ),
              Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColorLight,
                ),
              )
            ],
          ),
          SizedBox(
            height: 60,
          ),
          RoundedInputField(
              hintText: 'Your Email',
              icon: Icons.person,
              onChanged: controller.onUsernameChanged),
          PasswordField(onChanged: controller.onPasswordChanged),
          SizedBox(
            height: 12,
          ),
          TextButton(onPressed: () => controller.sumit(), child: Text('SUBMIT'))
        ],
      ),
    );
  }
}
