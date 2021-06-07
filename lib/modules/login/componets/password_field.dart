import 'package:flutter/material.dart';
import 'package:iso_test/modules/login/componets/text_field_container.dart';
import 'package:iso_test/theme/app_theme.dart';

class PasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
        hintText: "password",
        icon: Icon(Icons.lock, color: kPrimaryColor),
        suffixIcon: Icon(Icons.visibility, color: kPrimaryColor),
        border: InputBorder.none,
      ),
    ));
  }
}
