import 'package:flutter/material.dart';
import 'package:get/get.dart';

//任务页面控制台(状态管理中心)
class ControllerTask extends GetxController {
  //模拟数据
  final List<IconData> iconlist = [
    Icons.playlist_add_check,
    Icons.house_siding,
    Icons.post_add,
    Icons.work,
    Icons.chrome_reader_mode,
    Icons.fact_check,
    Icons.shopping_cart,
  ].obs;
  final List<String> tasklist = [
    "收获验单",
    "收货单入库",
    "备货装箱单签收",
    "托外公单审批",
    "自制工单审批",
    "领料作业签收",
    "采购订单审批",
    "托外公单审批",
  ].obs;
}
