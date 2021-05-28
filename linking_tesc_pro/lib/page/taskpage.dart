import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/controller/controlerrefresh.dart';
import 'package:linking_tesc_pro/controller/controllerleftdraw.dart';
import 'package:linking_tesc_pro/controller/controllertask.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class TaskPage extends StatelessWidget {
  final ControllerTask ct = Get.put(ControllerTask());
  final ControllerRefresh ctrf = Get.put(ControllerRefresh());
  final ControllerLeftDrawer cld = Get.put(ControllerLeftDrawer());
  @override
  Widget build(BuildContext context) {
    //展示使用，后面有了数据再进行修正
    //虚拟数据列表，后面不在这里接收
    return Scaffold(
      //此处为空，没找到相关的图片
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
      body: buildPurSR(),
    );
  }

//刷新组件
  SmartRefresher buildPurSR() {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      header: WaterDropHeader(),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus mode) {
          Widget body;
          if (mode == LoadStatus.idle) {
            body = Text("上拉加载");
          } else if (mode == LoadStatus.loading) {
            body = CupertinoActivityIndicator();
          } else if (mode == LoadStatus.failed) {
            body = Text("加载失败！点击重试！");
          } else if (mode == LoadStatus.canLoading) {
            body = Text("松手,加载更多!");
          } else {
            body = Text("没有更多数据了!");
          }
          return Container(
            height: 55.0,
            child: Center(child: body),
          );
        },
      ),
      controller: ctrf.refreshController,
      onRefresh: ctrf.onRefresh,
      onLoading: ctrf.onLoading,
      //任务列表样式
      child: buildTaskListView(),
    );
  }

//抽屉列表样式
  ListView buildTaskListView() {
    return ListView.builder(
      itemCount: 7,
      itemExtent: 90,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        return Card(
          margin: EdgeInsets.only(bottom: 8),
          child: buildTaskCard(
              tasktype: ct.tasklist[index], icon: ct.iconlist[index]),
        );
      },
    );
  }

//标题左上角弹出
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
                    onTap: () {
                      cld.titleAdd();
                    },
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
                  print("退出按钮");
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

//任务列表分类页面
  ListTile buildTaskCard(
      {bool isstack = true, String tasktype, IconData icon}) {
    return ListTile(
      leading: Container(
        margin: EdgeInsets.zero,
        width: 20,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 0),
        child: Icon(
          icon,
          size: 50,
          color: Colors.grey[900],
        ),
      ),
      title: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.zero,
        child: Text(
          tasktype,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      contentPadding: EdgeInsets.only(right: 10, top: 0, left: 5),
      trailing: Container(
        width: 90,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 60, top: 8),
              alignment: Alignment.centerRight,
              width: 40,
              height: 40,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 35,
                color: Colors.grey[900],
              ),
            ),
            Positioned(
                right: 40,
                top: 10,
                child: isstack
                    ? Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          //任务数
                          "99+",
                          style: TextStyle(fontSize: 18),
                        ),
                      )
                    : Container())
          ],
        ),
      ),
      onTap: () {
        // print(Get.arguments["666"]);
        print(tasktype);
      },
    );
  }

//底部按钮
  Row buildBottomRow() {
    return Row(
      children: [
        buildWorkBenchButton(
          title: "任务",
          isSelect: true,
          isstack: true,
          routeName: "/task",
        ),
        buildWorkBenchButton(
            isSelect: false,
            title: "工作台",
            routeName: "/workbench",
            icon: Icons.format_list_bulleted)
      ],
    );
  }

//按钮样式
  Expanded buildWorkBenchButton(
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
        print("底部按钮$routeName");
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
                          : Container())
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
