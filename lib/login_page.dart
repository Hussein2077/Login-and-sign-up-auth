import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BuildController>(
      init: BuildController(),
      builder: (controller){
        return Scaffold(
          appBar: AppBar(),
          body: null,
        );
      },
    );
  }
}
