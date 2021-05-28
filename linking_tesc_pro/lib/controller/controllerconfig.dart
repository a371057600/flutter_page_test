import 'package:get/get.dart';
import 'package:linking_tesc_pro/net/netRequest.dart';

//登录页面的控制台(状态管理)
class ControllerConfig extends GetxController {
  void loginPage() {
    NetRequest().requestData("http://192.168.1.160:5001/api/Account/Token",
        method: "get",
        queryParameters: {
          "userName": name.value,
          "pwd": psword.value
        }).then((res) {
      print(res.code);
      code.value = res.code;
      msg.value = res.msg.toString();
      token.value = res.data.toString();
    }).catchError((error) {
      print(error.toString());
      error.value = "错误:${error.toString()}";
    });
  }

  void postData() {}
  void getData() {}
  void getDetail() {
    NetRequest().requestData(
      "http://192.168.1.160:5001/api/Test",
      method: "get",
      queryParameters: {
        "Title": title.value,
      },
    ).then((res) {
      datalist.clear();
      // print(res.data['list'].toString());
      print(title.value);
      // print(res.data['list']);
      print(res.data['list'] is List);
      var listlist = [...res.data['list']];
      for (var i in listlist) {
        datalist.add(i['id']);
      }
      print(datalist);
    });
  }

  void putData() {}
  void deleteData() {
    uId.value = datalist[0];
    NetRequest().requestData(
      "http://192.168.1.160:5001/api/Test",
      method: "delete",
      queryParameters: {
        "id": uId.value,
      },
    ).then((res) {
      if (res.code == 200) {}
    });
  }

  final sorting = "".obs;
  final uId = "".obs;
  final pageSize = 0.obs;
  final pageindex = 0.obs;
  final datalist = <dynamic>[].obs;
  final title = "".obs;
  final subTitle = "".obs;
  final content = "".obs;
  final code = 0.obs;
  final isopen = true.obs;
  final name = "输入账户".obs;
  final psword = "输入密码".obs;
  final logo = "GTL".obs;
  final token = "无数据".obs;
  final error = "无事".obs;
  final msg = "".obs;
  void openchange() {
    // ignore: unnecessary_statements
    isopen.value = !isopen.value;
    update();
  }
}
