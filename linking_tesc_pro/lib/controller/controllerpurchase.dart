import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/model/purchaseordermodel.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

//采购页面的控制台(状态管理)
class ControllerPurchase extends GetxController {
  final itemsdropdownbutton = [""].obs;
  final loginKey = GlobalKey<FormState>().obs;

  void printkey() {
    loginKey.value.currentState.save();
  }

  final v1 = 0.obs;
  final v2 = 0.obs;
  final v3 = 0.obs;
  final v4 = 0.obs;
  RefreshController rfpurchaseController =
      RefreshController(initialRefresh: false);

  final maporderlist = <Map<String, String>>[
    {
      "id": "A09125001",
      "manufactor": "南隆塑料",
      "purstaff": "董晓敏",
      "salesdata": "20100101",
      "purdate": "20191225",
      "amount": "1260RMB"
    },
    {
      "id": "A09125001",
      "manufactor": "南隆塑料",
      "purstaff": "董晓敏",
      "salesdata": "20100101",
      "purdate": "20191225",
      "amount": "1260RMB"
    }
  ].obs;
  final searchPur = [].obs;
  final orderlist = <PurchaseOrderModel>[
    PurchaseOrderModel(
        id: "A091225001",
        manufactor: "南隆塑料",
        purstaff: "董晓敏",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "1260RMB"),
    PurchaseOrderModel(
        id: "A091225002",
        manufactor: "南隆塑料",
        purstaff: "Vincent",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "260RMB"),
    PurchaseOrderModel(
        id: "A091225003",
        manufactor: "五金设备制造厂塑料模具有限公司",
        purstaff: "董晓敏",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "1,200RMB"),
    PurchaseOrderModel(
        id: "A091225004",
        manufactor: "南隆塑料",
        purstaff: "董晓敏",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "1260RMB"),
    PurchaseOrderModel(
        id: "A091225006",
        manufactor: "南隆塑料",
        purstaff: "郭佳敏",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "1260RMB")
  ].obs;
  void onRefreshpurchase() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1200));
    // if failed,use refreshFailed()
    orderlist.add(PurchaseOrderModel(
        id: "A091225006222",
        manufactor:
            "                                               塑料有限公司 SHANG YING PLASTIC MOULD CO.,LTS",
        purstaff: "姚振能",
        salesdate: 20100101,
        purdate: 20191225,
        amount: "9,999US\$"));
    print(orderlist.length);
    rfpurchaseController.refreshCompleted();
  }

  void onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    print("上推加载");

    rfpurchaseController.loadComplete();
  }
}
