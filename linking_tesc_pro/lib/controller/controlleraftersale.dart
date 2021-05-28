import 'package:get/get.dart';
import 'package:linking_tesc_pro/model/BussinessSaveModel.dart';

//刷新插件的控制台(状态管理中心)
class ControllerAfterSales extends GetxController {
  //字段列表,添加的字段生成的列表
  final modelSave = BussinessSaveModel().obs;
  final modelModle = Model().obs;

  void testfunc() {
    modelModle.value = Model.fromJson({"id": "1234456"});
    modelSave.value = BussinessSaveModel.fromJson(
        {"ObjectId": "ariosetnarotnrs", "Model": modelModle});
    print(modelSave.value.model.toString());
    print(modelModle.value.id);
  }
}
