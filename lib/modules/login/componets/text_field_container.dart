import 'package:flutter/material.dart';
import 'package:iso_test/theme/app_theme.dart';
import 'package:get/get.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: Get.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
