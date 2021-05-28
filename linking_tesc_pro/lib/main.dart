import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:linking_tesc_pro/page/workbenchpage.dart';
import 'package:linking_tesc_pro/route/route.dart';

void main() {
  runApp(GetMaterialApp(
    home: WorkBench(),
    getPages: getPagesroute,
  ));
}
