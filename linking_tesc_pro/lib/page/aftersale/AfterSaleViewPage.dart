import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/page/component/GTLTitleList.dart';

class AfterSaleViewPage extends StatelessWidget {
  const AfterSaleViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 40,
            child: Icon(
              Icons.more_horiz,
              size: 35,
            ),
          )
        ],
        title: Column(
          children: [
            Text(
              "售后申请表",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text("KF20210418001",
                style: TextStyle(color: Colors.grey, fontSize: 14))
          ],
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey[300],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //表单信息
              buildFormInfo(),
              buildMiddle(),
              // Container(
              //   margin: EdgeInsets.only(top: 10),
              //   alignment: Alignment.center,
              //   color: Colors.cyan,
              //   height: 60,
              //   child: Text("完成按钮"),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildMiddle() {
    return Expanded(
      child: Container(
          alignment: Alignment.center,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      alignment: Alignment.centerLeft,
                      // color: Colors.grey[300],
                      child: Text(
                        "订单详情",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.2),
                      ),
                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(right: 5, left: 5),
                      child: GTLTitleList(
                        itemName: "RK-040",
                        itemNo: "202001899",
                        imageUrl:
                            "http://dg.gtltw.ltd:8000/upload/images/202105/39fcbdf9c321ea6c8c5c1808a0c47de2.jpg",
                        qty: "100",
                        unitName: "个",
                        category: "业务",
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
              buildImageContainer(),
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      alignment: Alignment.centerLeft,
                      // color: Colors.grey[300],
                      child: Text(
                        "描      述",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            height: 1.2),
                      ),
                    ),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                        right: 5,
                        left: 5,
                        bottom: 10,
                      ),
                      child: Container(
                          // padding: EdgeInsets.all(5),
                          // margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                            style: TextStyle(height: 1.2),
                          )),
                    )
                  ],
                ),
              ),
              buildFormCard(
                  title: "原因分析",
                  content:
                      "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                  name: "姚振能",
                  date: "202210601"),
              buildFormCard(
                  title: "改善措施",
                  content:
                      "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                  name: "姚振能",
                  date: "202210601"),
              buildFormCard(
                  title: "处理结果",
                  content:
                      "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                  name: "姚振能",
                  date: "202210601"),
              buildFormCard(
                  title: "客户意见",
                  content:
                      "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                  name: "姚振能",
                  date: "202210601"),
              buildFormCard(
                  title: "结果追踪",
                  content:
                      "这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用这里是测试,到底有多少行字,具体效果如何,自适应是否够用",
                  name: "姚振能",
                  date: "202210601"),
            ],
          )),
    );
  }

  Container buildImageContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            // height: 30,
            padding: EdgeInsets.only(top: 10, left: 5),
            alignment: Alignment.centerLeft,
            // color: Colors.grey[300],
            child: Text(
              "图片",
              style: TextStyle(
                  height: 1.2, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(bottom: 10),
            child: Wrap(
              children: <Widget>[
                Image.network(
                  "http://dg.gtltw.ltd:8000/upload/images/202105/39fc48776a47c4463723eccd75b7b295.jpg",
                  width: Get.width / 6,
                  height: Get.width / 6,
                ),

                // GTLSingleImageViewWidget(
                //   width: Get.width/6,
                //   height: Get.width/6,
                //   imageUrl: "http://dg.gtltw.ltd:8000/upload/images/202105/39fc48776a47c4463723eccd75b7b295.jpg",
                //   imageOriginalUrl: "http://dg.gtltw.ltd:8000/upload/images/202105/39fc48776a47c4463723eccd75b7b295.jpg",
                // ),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  Widget buildFormCard(
      {String title, String content, String name, String date}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            // height: 30,
            padding: EdgeInsets.only(top: 10, left: 5),
            alignment: Alignment.centerLeft,
            // color: Colors.grey[300],
            child: Text(
              title,
              style: TextStyle(
                  height: 1.2, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Divider(),
          Container(
              margin: EdgeInsets.only(top: 10, right: 5, left: 5),
              alignment: Alignment.centerLeft,
              // child: Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     // Container(
              //     //   child: Text(
              //     //     title,
              //     //     style: TextStyle(height: 1.2),
              //     //   ),
              //     // ),
              //     Expanded(
              child: Text(
                content,
                style: TextStyle(height: 1.2),
              )),
          //   ],
          // ),
          // ),
          Divider(),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.account_box,
                          size: 16,
                        ),
                      ),
                      Text(name),
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(
                          Icons.schedule,
                          size: 16,
                        ),
                      ),
                      Text(date),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildFormInfo() {
    return Container(
        margin: EdgeInsets.only(top: 8),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        color: Colors.white,
        child: Column(children: [
          //头部
          Row(
            children: [
              buildTitleView("姚振能", "申请人"),
              SizedBox(
                width: 0.5,
                height: 35,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              buildTitleView("已审核待批准", "状态"),
              SizedBox(
                width: 0.5,
                height: 35,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              buildTitleView("2021.06.01", "申请日期"),
            ],
          ),
        ]));
  }

  Widget buildTitleView(String title, String content) {
    return Expanded(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              content,
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
