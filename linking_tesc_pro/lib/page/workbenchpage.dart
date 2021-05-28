import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/controller/controllerleftdraw.dart';
import 'package:linking_tesc_pro/controller/controllerwb.dart';

class WorkBench extends StatelessWidget {
  final ControllerLeftDrawer cld = Get.put(ControllerLeftDrawer());
  final ControllerWB cwb = Get.put(ControllerWB());
  @override
  Widget build(BuildContext context) {
    //展示使用，后面有了数据再进行修正

    return Scaffold(
      drawer: buildGTLDrawer(),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "GTL",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[900],
      ),
      bottomNavigationBar: SafeArea(
        child: buildBottomRow(),
      ),
      body: ListView(
        children: cwb.wbContant(),
      ),
    );
  }

  Drawer buildGTLDrawer() {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            padding: EdgeInsets.only(left: 0),
            decoration: BoxDecoration(
              color: Colors.grey[700],
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  InkWell(
                    onTap: () {
                      cld.titledel();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      child: SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          foregroundColor: Colors.white,
                          child: Text("GTL"),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      height: 50,
                      child: Text(
                        'Jing',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Obx(() => Column(
                  children: cld.cardList(),
                )),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: ElevatedButton(
                onPressed: () {
                  print("退出登陆");
                  Get.offAllNamed("/login");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Container(
                  child: Text("退出按钮"),
                )),
          )
        ],
      ),
    );
  }

//底部按钮
  Row buildBottomRow() {
    return Row(
      children: [
        buildWorkBenchButton(isstack: true, routeName: "/task"),
        buildWorkBenchButton(
            isSelect: true,
            title: "工作台",
            isstack: false,
            icon: Icons.format_list_bulleted,
            routeName: "/workbench")
      ],
    );
  }

  Widget buildWorkBenchButton(
      {String title = "任务",
      bool isstack = false,
      IconData icon = Icons.announcement,
      bool isSelect = false,
      String routeName = "/login"}) {
    return Expanded(
        child: InkWell(
      onTap: () {
        //跳转页面
        Get.offNamed(routeName);
        print("底部按钮");
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[900],
            border: isSelect
                ? Border(bottom: BorderSide(color: Colors.red[300], width: 4))
                : Border(
                    bottom: BorderSide(color: Colors.grey[900], width: 0))),
        padding: EdgeInsets.all(2),
        height: 60,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    child: Icon(
                      icon,
                      size: 30,
                      color: Colors.white54,
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: isstack
                          ? Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Text(
                                //任务数
                                "99+",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          : Opacity(opacity: 0.8, child: Container()))
                ],
              ),
              Text(title, style: TextStyle(color: Colors.white38)),
            ],
          ),
        ),
      ),
    ));
  }
}
