class SuppModel {
  Data data;
  bool status;
  String msg;

  SuppModel({this.data, this.status, this.msg});

  SuppModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['status'] = this.status;
    data['msg'] = this.msg;
    return data;
  }
}

class Data {
  List<PageData> pageData;
  int rowsCount;

  Data({this.pageData, this.rowsCount});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['page_data'] != null) {
      // ignore: deprecated_member_use
      pageData = new List<PageData>();
      json['page_data'].forEach((v) {
        pageData.add(new PageData.fromJson(v));
      });
    }
    rowsCount = json['rows_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pageData != null) {
      data['page_data'] = this.pageData.map((v) => v.toJson()).toList();
    }
    data['rows_count'] = this.rowsCount;
    return data;
  }
}

class PageData {
  String suppCode;
  String suppShortName;
  int itemCount;

  PageData({this.suppCode, this.suppShortName, this.itemCount});

  PageData.fromJson(Map<String, dynamic> json) {
    suppCode = json['SuppCode'];
    suppShortName = json['SuppShortName'];
    itemCount = json['ItemCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SuppCode'] = this.suppCode;
    data['SuppShortName'] = this.suppShortName;
    data['ItemCount'] = this.itemCount;
    return data;
  }
}
