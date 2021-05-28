import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:linking_tesc_pro/page/workbenchpage.dart';

class SplashScreens extends StatelessWidget {
  const SplashScreens({
    this.arguments,
    this.route,
    Key key,
  }) : super(key: key);
  final String route;
  final Map<String, String> arguments;

  @override
  Widget build(BuildContext context) {
    bool tapto = true;
    Timer(Duration(seconds: 3), () {
      if (tapto == true) {
        Get.offNamed(route, arguments: this.arguments);
        print("无点击   跳转");
      }
    });

    return Scaffold(
      body: InkWell(
        onTap: () {
          tapto = false;
          Get.offNamed(route, arguments: this.arguments);
        },
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: Get.height / 2,
              child: Image.asset(
                "static/images/gtl_logo.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              width: Get.width,
              height: 300,
              child: Text("页面载入中......"),
            ),
          ],
        ),
      ),
    );
  }
}
