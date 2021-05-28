import 'package:get/get.dart';
import 'package:linking_tesc_pro/controller/controllersup.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

//刷新插件的控制台(状态管理中心)
class ControllerRefresh extends GetxController {
  ControllerSup sup = Get.put(ControllerSup());
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1200));
    sup.requestObjectData();
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
