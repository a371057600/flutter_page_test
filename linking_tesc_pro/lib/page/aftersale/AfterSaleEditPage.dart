import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/page/aftersale/controller/conAfterSaleEdit.dart';

class AfterSaleEditPage extends StatefulWidget {
  AfterSaleEditPage({Key key}) : super(key: key);

  @override
  _AfterSaleEditPageState createState() => _AfterSaleEditPageState();
}

class _AfterSaleEditPageState extends State<AfterSaleEditPage> {
  ControllerASEdit asEdit = Get.put(ControllerASEdit());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("创建表单"),
      ),
    );
  }
}
