import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:linking_tesc_pro/controller/controllerSupDetail.dart';
import 'package:linking_tesc_pro/model/SuppModel.dart';
import 'package:linking_tesc_pro/net/netRequest.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ControllerSup extends GetxController {
  final indexPage = 0.obs;
  PageController pageController;
  final model = PageData().obs;
  ControllerSupDetail supdetail = Get.put(ControllerSupDetail());
  // ignore: deprecated_member_use
  final listPageData = List<PageData>().obs;
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  void pcjump(int index) {
    pageController.jumpToPage(index);
    update();
  }

  final objectId = "".obs;
  void requestObjectData() {
    NetRequest().requestData("http://192.168.1.53:8000/object/GetBusinessList",
        method: "post",
        data: {"ObjectId": objectId.value.toString()}).then((res) {
      print("status:${res.status}");
      listPageData.clear();
      // print(res.data['page_data'][0]['SuppCode']);
      // print(res.data['page_data'][0]['SuppShortName']);
      // print(res.data['page_data'][0]['ItemCount']);
      for (var i in res.data['page_data']) {
        listPageData.add(model(PageData(
            suppCode: i['SuppCode'],
            suppShortName: i['SuppShortName'],
            itemCount: i['ItemCount'])));
      }
      print(listPageData.length);
    });
  }

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1200));
    requestObjectData();

    // if failed,use refreshFailed()
    print("下拉刷新");
    refreshController.refreshCompleted();
  }

  void onLoading() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    print("上推加载");
    refreshController.loadComplete();
  }
}
