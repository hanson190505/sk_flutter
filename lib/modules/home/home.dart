import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("go to login"),
            onTap: () => Get.toNamed('/login'),
          )
        ],
      ),
    );
  }
}
