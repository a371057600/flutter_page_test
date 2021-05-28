import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerLeftDrawer extends GetxController {
  final List<String> title = [
    "设置",
    "人脸注册",
    "问题反馈",
    "检查更新",
    "关于",
  ].obs;
  void titleAdd() {
    print("我是标题");
  }

  void titledel() {
    print("没了请增加");
  }

//共用的组件已经分离出来其他页面只需要Get.put(ControllerLeftDrawer())就可以使用
//左上角插件
  List<Widget> cardList() => List.generate(title.length, (index) {
        return Card(
          child: InkWell(
            onTap: () {
              print(title[index]);
            },
            child: ListTile(
              leading: Text(
                "${title[index]}",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
      });
}
