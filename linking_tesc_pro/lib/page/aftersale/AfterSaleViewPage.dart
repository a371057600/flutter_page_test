import 'package:flutter/material.dart';

class AfterSaleViewPage extends StatelessWidget {
  const AfterSaleViewPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("售后申请表单"),
        centerTitle: true,
      ),
      body: Center(
          //主界面
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(
            size: 200,
          ),
          FlutterLogo(
            size: 200,
          ),
          FlutterLogo(
            size: 200,
          ),
          FlutterLogo(
            size: 200,
          ),
        ],
      )),
    );
  }
}
