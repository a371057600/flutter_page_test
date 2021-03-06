import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/page/aftersale/SplashScreen.dart';
import 'package:linking_tesc_pro/page/aftersale/controller/conAfterSale.dart';
import 'package:linking_tesc_pro/page/component/GTLTitleList.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AfterSaleApplication extends StatefulWidget {
  AfterSaleApplication({Key key, this.objectId}) : super(key: key);
  final String objectId;

  @override
  _AfterSaleApplicationState createState() => _AfterSaleApplicationState();
}

class _AfterSaleApplicationState extends State<AfterSaleApplication>
    with TickerProviderStateMixin {
  AnimationController _controller;
  AnimationController _controller1;
  AnimationController _controller2;
  AnimationController _controller3;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      upperBound: 0.5,
      lowerBound: 0,
    );
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      upperBound: 0.5,
      lowerBound: 0,
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      upperBound: 0.5,
      lowerBound: 0,
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      upperBound: 0.5,
      lowerBound: 0,
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ControllerAS controllerAS = Get.put(ControllerAS());
    print(controllerAS.isload.value);
    controllerAS.requestData();

    controllerAS.status.value = true;
    controllerAS.status1.value = true;
    controllerAS.status2.value = true;
    controllerAS.status3.value = true;

    // if (controllerAS.isload.value == 1) {
    //   return Center(child: Text("?????????????????????"));

    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("????????????"),
        actions: <Widget>[
          InkWell(
            onTap: () {
              print("????????????");
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              height: 40,
              width: 40,
              child: Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("????????????");
              Get.to(SplashScreens(
                route: "/aftersaledit",
                arguments: {"title": "???????????????"},
              ));
            },
            child: Container(
              padding: EdgeInsets.only(right: 10),
              // margin: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.add,
                size: 32,
              ),
            ),
          )
        ],
      ),
      body: Container(
          color: Colors.grey[300],
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 0),
                color: Colors.white,
                width: Get.width,
                height: 30,
                child: Row(
                  children: [
                    buildTapButton(
                        title: "??????",
                        status: controllerAS.status,
                        ancontroller: _controller,
                        pageIndex: 1),
                    buildTapButton(
                        title: "??????",
                        status: controllerAS.status1,
                        ancontroller: _controller1,
                        pageIndex: 2),
                    buildTapButton(
                        title: "?????????",
                        status: controllerAS.status2,
                        ancontroller: _controller2,
                        pageIndex: 3),
                    buildTapButton(
                        title: "????????????",
                        status: controllerAS.status3,
                        ancontroller: _controller3,
                        pageIndex: 4),
                  ],
                ),
              ),
              Expanded(child: buildPurSR(controllerAS)),
            ],
          )),
    );
  }

  Widget buildPurSR(ControllerAS controllerAS) {
    return Scrollbar(
      child: SmartRefresher(
        enablePullDown: true,
        enablePullUp: true,
        header: ClassicHeader(
          refreshStyle: RefreshStyle.UnFollow,
        ),
        footer: CustomFooter(
          builder: (BuildContext context, LoadStatus mode) {
            Widget body;
            if (mode == LoadStatus.idle) {
              body = Text("????????????");
            } else if (mode == LoadStatus.loading) {
              body = CupertinoActivityIndicator();
            } else if (mode == LoadStatus.failed) {
              body = Text("??????????????????????????????");
            } else if (mode == LoadStatus.canLoading) {
              body = Text("??????,????????????!");
            } else {
              body = Text("?????????????????????!");
            }
            return Container(
              height: 55.0,
              child: Center(child: body),
            );
          },
        ),
        controller: controllerAS.refreshController,
        onRefresh: controllerAS.onRefresh,
        onLoading: controllerAS.onLoading,
        //????????????
        child: buildASListView(controllerAS),
      ),
    );
  }

  ListView buildASListView(ControllerAS controllerAS) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (_, index) {
        return Container(
          // height: 200,
          margin: EdgeInsets.only(
            top: 10,
          ),
          padding: EdgeInsets.only(
            left: 5,
            right: 5,
            bottom: 5,
            top: 5,
          ),
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              Wrap(
                children: [
                  // ???????????? ???????????? ?????? ??????
                  buildTitleText(
                    title: "??????",
                    text: "KF20210418001",
                  ),
                  buildTitleText(title: "??????", text: "50", i: 1),
                  buildTitleText(title: "??????", text: "2021-05-21"),
                  buildTitleText(i: 2),

                  buildTitleText(title: "??????", text: "?????????", i: 2),
                  buildTitleText(title: "??????", text: "???????????????/??????", i: 1),

                  //
                ],
              ),
              Divider(
                height: 1,
                indent: 1.0,
                color: Colors.grey[300],
              ),
              GTLTitleList(
                imageUrl:
                    "http://dg.gtltw.ltd:8000/upload/images/202105/39fc48776a47c4463723eccd75b7b295.jpg",
                // qty: "100",
                itemNo: "20190202",
                category: "??????",
                // unitName: "???",
                itemName: "?????????SIP37T????????????",
              ),
              // ?????? ?????? ??????
              Divider(
                height: 1,
                indent: 1.0,
                color: Colors.grey[300],
              ),
              Container(
                // color: Colors.cyan,
                // alignment: Alignment.centerLeft,
                // padding: EdgeInsets.only(left: 3, top: 3, right: 3),
                // color: Colors.yellow[100],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 30,

                        // margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        color: Colors.green[100],
                        child: Text("??????????????????",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.green[600],
                                fontWeight: FontWeight.w600))),
                    InkWell(
                      onTap: () {
                        Get.to(() => SplashScreens(
                              route: "/aftersaleview",
                              arguments: {"??????": "??????"},
                            ));
                        // controllerAS.testfunc();
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              // color: Colors.blue[100],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                              border: Border.all(
                                  color: Colors.blue[800], width: 1)),
                          // margin: EdgeInsets.all(2),
                          // padding: EdgeInsets.all(2),
                          height: 30,
                          width: 80,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.print,
                                color: Colors.blue[800],
                              ),
                              Text(
                                "??????",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    color: Colors.blue[800]),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
          //????????????(???????????????) ???????????? ???????????? ????????? ??????
          //- FontSize:14
          // - ????????? FontSize:18
          // - color:grey[800]
          // - FontWeight.w400
        );
      },
    );
  }

  Container buildTitleText(
      {String title = "", String text = "", String label = "", int i = 2}) {
    return (text == "")
        ? Container(
            width: (Get.width / 2) - 5,
            height: 20,
            // color: Colors.orange,
          )
        : Container(
            // color: Colors.cyan,
            // alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 0, right: 3),
            // color: Colors.blue,
            height: 20, width: (Get.width / 2) - 5,
            child: Row(
              mainAxisAlignment:
                  i % 2 == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
              children: <Widget>[
                title == ""
                    ? SizedBox(
                        width: 0,
                        height: 20,
                      )
                    : Container(
                        margin: EdgeInsets.only(right: 5),
                        height: 20,
                        child: Text(title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.2,
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.w300)),
                      ),
                Container(
                  height: 20,
                  child: Text("$text",
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.2)),
                ),
                label == ""
                    ? SizedBox()
                    : Container(
                        // height: 40,
                        margin: EdgeInsets.only(bottom: 0, top: 0, left: 0),
                        padding: EdgeInsets.only(right: 4, left: 4, top: 0),
                        // alignment: Alignment(0.1,0.2),
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                            border:
                                Border.all(width: 1, color: Colors.blue[100]),
                            // shape: BoxShape.circle,
                            color: Colors.blue[100]),
                        child: Text(
                          label,
                          style: TextStyle(
                              fontSize: 9,
                              height: 1.2,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      )
              ],
            ),
          );
  }

  Widget buildTapButton(
      {String title,
      dynamic status,
      AnimationController ancontroller,
      int pageIndex}) {
    ControllerAS controllerAS = Get.put(ControllerAS());
    return Expanded(
        child: InkWell(
      onTap: () {
        if (status.value) {
          ancontroller.forward();
        } else {
          ancontroller.reverse();
        }
        controllerAS.pageIndex.value = pageIndex;
        status.value = !status.value;
        print(title + pageIndex.toString() + status.value.toString());
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  title,
                  style: TextStyle(
                      color: status.value ? Colors.black : Colors.blue),
                )),
            Obx(() => RotationTransition(
                  turns: ancontroller,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: status.value ? Colors.black : Colors.blue,
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
