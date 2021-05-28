import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/model/workbenchmodel.dart';
import 'package:linking_tesc_pro/page/aftersale/SplashScreen.dart';

//工作台控制台(状态管理中心)
class ControllerWB extends GetxController {
  //预留管理路由的map
  List<Map<String, dynamic>> maptitle = [
    {
      "name": "仓库管理",
      "func": ["盘点作业", "采购订单"],
      "url": ["/inventorycheck", "/purchaselist"]
    }
  ].obs;
  void mapprint(int i) {
    var url = maptitle[0]["url"][i];
    Get.to(url);
  }

  //功能
  var wbtitlelist = <WorkBench>[
    WorkBench(department: "仓库管理", func: [
      "领料作业",
      "生产入库",
      "盘点作业",
      "转仓作业",
      "样品使用",
      "仓位维护",
      "订单备货",
      "过期分析",
      "称重入库",
      "售后申请",
    ], url: [
      "/inventorycheck",
      "/inventorycheck",
      "/inventorycheck",
      "/inventorycheck",
      "/inventorycheck",
      "/seanalysis",
      "/seanalysis",
      "/aftersale",
      "/aftersale",
      "/aftersale",
      "/aftersale",
    ]),
    WorkBench(department: "生产管理", func: [
      "自制工单",
      "托外工单",
      "生产日报",
      "转仓作业",
      "个人工时",
      "快捷报工",
    ], url: []),
    WorkBench(department: "采购管理", func: [
      "采购订单",
      "来料收货",
      "来料入库",
      "EPDemo",
    ], url: [
      "/purchaselist",
      "/purchaselist",
      "/navbutton",
      "/eplistdemo",
    ]),
    WorkBench(
      department: "销售管理",
      func: [
        "自制工单",
        "托外工单",
        "生产日报",
        "转仓作业",
        "个人工时",
        "快捷报工",
      ],
      url: [],
    ),
    WorkBench(
        department: "品质管理",
        func: ["不良品报告", "检验报告", "售后报告"],
        url: ['/aftersale', '/aftersale', '/aftersale']),
    WorkBench(department: "基础资料", func: [
      "自制工单",
      "托外工单",
      "生产日报",
      "转仓作业",
      "个人工时",
      "快捷报工",
    ], url: []),
  ].obs;

  List<Widget> wbfunclist(int i) {
    var wblist = wbtitlelist[i].func;
    var wbulist = wbtitlelist[i].url;
    var mapicon = <String, IconData>{"ll": Icons.crop_din};
    return List.generate(
        wblist.length,
        (index) => Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 60,
              child: InkWell(
                onTap: () {
                  if (wbulist.length > 0) {
                    Get.to(SplashScreens(
                      route: wbulist[index],
                      arguments: {"ObjectId": wbulist[index]},
                    ));
                    // Get.toNamed(wbulist[index]);
                    // print(wbulist[index]);
                    // Get.defaultDialog();
                  } else {
                    print("此处为空");
                  }
                },
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Icon(
                          mapicon["ll"],
                          size: 50,
                        )),
                    Expanded(
                      flex: 1,
                      child: Text(
                        wblist[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 11),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  List<Widget> wbContant() => List.generate(wbtitlelist.length, (index) {
        return Container(
          width: double.infinity,
          child: Column(
            //如果wrap靠中间,那么就是受到了column的影响
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.grey[300],
                padding: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Text(
                  wbtitlelist[index].department,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 0,
                  children: wbfunclist(index),
                ),
              )
            ],
          ),
        );
      });
}
