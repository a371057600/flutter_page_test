import 'dart:io';

import 'package:dio/dio.dart' as dIO;
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ControllerASEdit extends GetxController {
  File image;

  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(
        // 拍照获取图片
        // source: ImageSource.camera,

        // 手机选择图库
        source: ImageSource.gallery,
        // 图片的最大宽度
        maxWidth: 400);
    // 更新状态

    if (pickedFile != null) {
      image = File(pickedFile.path);
      // 上传图片到服务器
      uploadImg(pickedFile.path);
    } else {
      print('没有选择任何图片');
    }
  }

  var dio = dIO.Dio();
  // 上传图片的方法
  void uploadImg(imageUrl) async {
    var formData = dIO.FormData.fromMap({
      "FieldId": "39fc487560f5cfc168feee5f3d930832",
      "file": await dIO.MultipartFile.fromFile(imageUrl, filename: "avatar.img")
    });
    var result =
        await dio.post("http://js.itying.com/imgupload", data: formData);
    print(result);
  }
}
