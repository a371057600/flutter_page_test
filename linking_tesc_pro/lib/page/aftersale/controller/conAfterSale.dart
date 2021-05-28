import 'package:get/get.dart';
import 'package:linking_tesc_pro/model/BussinessSaveModel.dart';
import 'package:linking_tesc_pro/net/netRequest.dart';
import 'package:linking_tesc_pro/page/aftersale/model/ModelASApplication.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ControllerAS extends GetxController {
  final isload = 0.obs;
  final objectId = "39fc4847fcaae3fc7f63b262faa202a6".obs;
  final fieldId = "39fc484e9eeebf671102506f366322e5".obs;
  final status = true.obs;
  final status1 = true.obs;
  final status2 = true.obs;
  final status3 = true.obs;
  final pageIndex = 1.obs;
  final afterSaleList = <AfterSaleApplictionModel>[].obs;
  final model = AfterSaleApplictionModel().obs;
  final baseUrl = "".obs;
  RefreshController refreshController =
      RefreshController(initialRefresh: false);
  final modelSave = BussinessSaveModel().obs;
  final modelModel = Model().obs;
  final json = <String, String>{}.obs;
  final models = <String, dynamic>{}.obs;

  void onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1200));
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

  void requestData() {
    isload.value = 1;
    baseUrl.value = "http://192.168.1.53/8000";
    // isLoading.value = true;
    NetRequest()
        .requestData("http://192.168.1.53:8000/object/GetBusinessList",
            method: "post",
            data: {
              "ObjectId": objectId.value.toString(),
              "PageIndex": 0,
              "PageLength": 20,
              "ByForm": true,
              "Params": [
                {"FieldId": fieldId.value, "SearchValue": ""}
              ]
            })
        .then((res) {})
        .catchError((error) {
          isload.value = 5;
          print(error);
          // isLoading.value = false;
        });
  }
}
