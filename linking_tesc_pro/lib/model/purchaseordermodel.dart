class PurchaseOrderModel {
  String id;
  String manufactor;
  int purdate;
  int salesdate;
  String purstaff;
  String amount;

  PurchaseOrderModel(
      {this.id,
      this.manufactor,
      this.purdate,
      this.salesdate,
      this.purstaff,
      this.amount});

  PurchaseOrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    manufactor = json['manufactor'];
    purdate = json['purdate'];
    salesdate = json['salesdate'];
    purstaff = json['purstaff'];
    amount = json['amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['manufactor'] = this.manufactor;
    data['purdate'] = this.purdate;
    data['salesdate'] = this.salesdate;
    data['purstaff'] = this.purstaff;
    data['amount'] = this.amount;
    return data;
  }
}
