import 'package:get/get.dart';
import 'package:flutter/material.dart';

//折叠窗口(状态管理)
class ControllerEPList extends GetxController {
  final indexpage = 0.obs;
  PageController pageController;
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  void pcjump(int index) {
    pageController.jumpToPage(index);
    update();
  }

  final isExpanded = false.obs;
  final Map<String, dynamic> departmentExpanded = {
    "isExpanded": false,
    "name": "仓库管理",
    "func": [
      "",
      "",
      "",
    ],
  }.obs;
  final List<Map<String, dynamic>> listdepart = [
    {
      "isExpanded": false,
      "name": "仓库管理",
      "func": [
        "领料作业",
        "生产入库",
        "盘点作业",
        "转仓作业",
        "样品使用",
        "仓位维护",
        "订单备货",
        "称重入库",
      ],
    },
    {
      "isExpanded": false,
      "name": "生产管理",
      "func": [
        "采购订单",
        "来料收货",
        "来料入库",
        "EPlistDemo",
      ],
    }
  ].obs;
}
