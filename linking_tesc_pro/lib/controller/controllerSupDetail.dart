import 'package:get/get.dart';
import 'package:linking_tesc_pro/net/netRequest.dart';

class ControllerSupDetail extends GetxController {
  final objectId = "39fc7bd1c62e776a021c742706e3ab13".obs;
  final fieldId = "SuppCode".obs;
  final searchValue = "86428".obs;
  final isLoading = true.obs;
  final listPageData = [].obs;
  final pagelength = 20.obs;
  final rowscount = 0.obs;

  void requestObjectData() async {
    isLoading.value = true;
    NetRequest().requestData("http://192.168.1.53:8000/object/GetBusinessList",
        method: "post",
        data: {
          "ObjectId": "39fc7bd1c62e776a021c742706e3ab13",
          "PageIndex": 0,
          "PageLength": pagelength.value,
          "Params": [
            {"FieldId": fieldId.value, "SearchValue": searchValue.value}
          ]
        }).then((res) {
      print("status:${res.status}");
      print("page_data:${res.data["page_data"].toString()}");
      listPageData.clear();

      print(listPageData.length);
    }).catchError((error) {
      print(error);
      isLoading.value = false;
    });
  }
}
