class SupDetailModel {
  String billTypeName;
  String suppCode;
  String suppShortName;
  String billNo;
  String billDate;
  String deliveryDate;
  String itemNo;
  String itemName;
  String unitName;
  String imageUrl;
  int orderQty;
  int cancelQty;
  int stockInQty;
  int overDays;

  SupDetailModel(
      {this.billTypeName,
      this.suppCode,
      this.suppShortName,
      this.billNo,
      this.billDate,
      this.deliveryDate,
      this.itemNo,
      this.itemName,
      this.unitName,
      this.imageUrl,
      this.orderQty,
      this.cancelQty,
      this.stockInQty,
      this.overDays});

  SupDetailModel.fromJson(Map<String, dynamic> json) {
    billTypeName = json['BillTypeName'];
    suppCode = json['SuppCode'];
    suppShortName = json['SuppShortName'];
    billNo = json['BillNo'];
    billDate = json['BillDate'];
    deliveryDate = json['DeliveryDate'];
    itemNo = json['ItemNo'];
    itemName = json['ItemName'];
    unitName = json['UnitName'];
    imageUrl = json['ImageUrl'];
    orderQty = json['OrderQty'];
    cancelQty = json['CancelQty'];
    stockInQty = json['StockInQty'];
    overDays = json['OverDays'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['BillTypeName'] = this.billTypeName;
    data['SuppCode'] = this.suppCode;
    data['SuppShortName'] = this.suppShortName;
    data['BillNo'] = this.billNo;
    data['BillDate'] = this.billDate;
    data['DeliveryDate'] = this.deliveryDate;
    data['ItemNo'] = this.itemNo;
    data['ItemName'] = this.itemName;
    data['UnitName'] = this.unitName;
    data['ImageUrl'] = this.imageUrl;
    data['OrderQty'] = this.orderQty;
    data['CancelQty'] = this.cancelQty;
    data['StockInQty'] = this.stockInQty;
    data['OverDays'] = this.overDays;
    return data;
  }
}
