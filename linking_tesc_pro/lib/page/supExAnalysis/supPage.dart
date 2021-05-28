import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:linking_tesc_pro/controller/controllersup.dart';
import 'package:linking_tesc_pro/page/supExAnalysis/supDetailPage.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class SupPage extends StatelessWidget {
  final String objectId;
  const SupPage({Key key, this.objectId = "39fc76c158510beb94bb621fc98c389c"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControllerSup sup = Get.put(ControllerSup());
    sup.objectId.value = objectId;
    sup.requestObjectData();
    print(objectId);
    return Scaffold(
      appBar: AppBar(
        title: Text("供应商过期分析"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Obx(() => buildPurSR(sup))),
            Container(
              height: 40,
              width: 300,
              margin: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    spreadRadius: 3,
                  ),
                ],
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue[900],
              ),
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "扫一扫",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "static/images/scan.png",
                    height: 25,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SmartRefresher buildPurSR(ControllerSup sup) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
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
      controller: sup.refreshController,
      onRefresh: sup.onRefresh,
      onLoading: sup.onLoading,
      //订单列表
      child: ListView.builder(
          itemCount: sup.listPageData.length,
          itemBuilder: (_, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: ListTile(
                onTap: () {
                  print(sup.listPageData[index].suppShortName);
                  Get.to(() => SupDetailPage(),
                      arguments: sup.listPageData[index].suppCode);
                },
                title: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                            padding: EdgeInsets.all(3),
                            child: Text(
                              "${sup.listPageData[index].suppCode}(${sup.listPageData[index].suppShortName})",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            )),
                      ),
                      sup.listPageData[index].itemCount < 100
                          ? buildItemCount(
                              sup.listPageData[index].itemCount.toString(),
                              index)
                          : buildItemCount("99+", index),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 30,
                        alignment: Alignment.centerLeft,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey[500],
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 2),
                enabled: true,
              ),
            );
          }),
    );
  }

  Container buildItemCount(String sub, int index) {
    return Container(
        margin: EdgeInsets.only(left: 0),
        alignment: Alignment.center,
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 1, //阴影范围
                spreadRadius: 1, //阴影浓度
                color: Colors.grey, //阴影颜色
              ),
            ],
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        padding: EdgeInsets.all(1),
        child: Text(
          sub,
          style: TextStyle(fontSize: 13, color: Colors.white),
        ));
  }
}
