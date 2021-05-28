import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:linking_tesc_pro/controller/controllerSupDetail.dart';
// import 'package:linking_tesc_pro/controller/controllersupexanalysis.dart';

class SupDetailPage extends StatelessWidget {
  const SupDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ControllerSupDetail supD = Get.put(ControllerSupDetail());
    return Scaffold(
        appBar: AppBar(
          title: Text("供应商超期明细表"),
        ),
        body: Container(
          color: Colors.grey[100],
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 40,
                child: Container(
                  color: Colors.grey[500],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          child: Text(
                        "志硕",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                      Expanded(
                          child: Text(
                        "86001",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                    ],
                  ),
                ),
              ),
              Expanded(child: Scrollbar(child: buildLVoverdue(supD))),
            ],
          ),
        ));
  }

  ListView buildLVoverdue(ControllerSupDetail supD) {
    return ListView.builder(
        itemCount: supD.pagelength.value,
        itemBuilder: (_, index) {
          return Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Image.network(
                              "http://dg.gtltw.ltd:8000/images/JGF-XX-1135.jpg"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin: EdgeInsets.all(1),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 4,
                                      child: Container(
                                        child: Text(
                                          "B-00032",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 22),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(right: 5),
                                          child: Text(
                                            "逾期:${(index + 1).toString()}",
                                            style: TextStyle(color: Colors.red),
                                            textDirection: TextDirection.rtl,
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: Get.width,
                                height: 30,
                                child: Text(
                                  "遙控殼零件-上蓋 (2B 無槽) B款本田遙控鑰匙殼+HON66銀胚 ",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.w200),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                width: Get.width,
                                child:
                                    Text("遙控殼零件-上蓋 (2B 無槽)  B款本田遙控鑰匙殼+HON66銀胚",
                                        maxLines: 2,
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w200,
                                        )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            child: Text(
                              "托运飞天货物".substring(0, 1),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 11),
                            ),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                          ),
                          Text("A2021070010",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w200)),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Text("3000 Psc",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w200)),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Text("送货:2020-10-30",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w200)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
