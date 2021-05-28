import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GTLTitleList extends StatelessWidget {
  const GTLTitleList(
      {Key key,
      this.itemName,
      this.imageUrl,
      this.itemNo,
      this.category,
      this.qty = "",
      this.unitName = ""})
      : super(key: key);

  final String imageUrl;
  final String itemNo;
  final String itemName;
  final String category;
  final String qty;
  final String unitName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Image.network(
              imageUrl,
              width: 60,
              height: 60,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.only(left: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Text(
                            itemNo,
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        //数量
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 2),
                                child: Text(
                                  qty,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Text(
                                  unitName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 2),
                    margin: EdgeInsets.only(bottom: 4, left: 0),
                    alignment: Alignment.topLeft,
                    // width: Get.width,
                    height: 16,
                    child: Container(
                      width: Get.width - 70,
                      child: Text(
                        itemName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 2),
                    height: 16,
                    child: Text("$category",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
