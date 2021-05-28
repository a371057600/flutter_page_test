class AfterSaleApplictionModel {
  Data data;
  bool status;
  String msg;

  AfterSaleApplictionModel({this.data, this.status, this.msg});

  AfterSaleApplictionModel.fromJson(Map<String, dynamic> json) {
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
      pageData = <PageData>[];
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
  String id;
  String billNo;
  String billDate;
  String dptId;
  String dptIdName;
  String customerId;
  String customerIdNumber;
  String orderNo;
  String orderDate;
  String materialId;
  String materialIdItemNo;
  String materialIdName;
  int qty;
  String salesman;
  String supOrder;
  String description;
  String image;
  String imageUrl;
  String serviceAnalysis;
  String serviceSigner;
  String serviceSignerName;
  String serviceSignTime;
  String improvement;
  String improvementSigner;
  String improvementSignerName;
  String improvementSignTime;
  String processResult;
  String processResultSigner;
  String processResultSignerName;
  String processResultSignTime;
  String customerFaceback;
  String customerFacebackSinger;
  String customerFacebackSingerName;
  String customerFacebackSignTime;
  String resultTrack;
  String resultTrackSinger;
  String resultTrackSingerName;
  String resultTrackSignTime;
  String createTime;
  String modifier;
  String modifierNickName;
  String creater;
  String createrNickName;
  String modifyTime;
  String approver;
  String approverNickName;
  String approveTime;
  int approveStatus;
  int iRowNumber;
  String approveStatusName;

  PageData(
      {this.id,
      this.billNo,
      this.billDate,
      this.dptId,
      this.dptIdName,
      this.customerId,
      this.customerIdNumber,
      this.orderNo,
      this.orderDate,
      this.materialId,
      this.materialIdItemNo,
      this.materialIdName,
      this.qty,
      this.salesman,
      this.supOrder,
      this.description,
      this.image,
      this.imageUrl,
      this.serviceAnalysis,
      this.serviceSigner,
      this.serviceSignerName,
      this.serviceSignTime,
      this.improvement,
      this.improvementSigner,
      this.improvementSignerName,
      this.improvementSignTime,
      this.processResult,
      this.processResultSigner,
      this.processResultSignerName,
      this.processResultSignTime,
      this.customerFaceback,
      this.customerFacebackSinger,
      this.customerFacebackSingerName,
      this.customerFacebackSignTime,
      this.resultTrack,
      this.resultTrackSinger,
      this.resultTrackSingerName,
      this.resultTrackSignTime,
      this.createTime,
      this.modifier,
      this.modifierNickName,
      this.creater,
      this.createrNickName,
      this.modifyTime,
      this.approver,
      this.approverNickName,
      this.approveTime,
      this.approveStatus,
      this.iRowNumber,
      this.approveStatusName});

  PageData.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    billNo = json['BillNo'];
    billDate = json['BillDate'];
    dptId = json['DptId'];
    dptIdName = json['DptId__Name'];
    customerId = json['CustomerId'];
    customerIdNumber = json['CustomerId__Number'];
    orderNo = json['OrderNo'];
    orderDate = json['OrderDate'];
    materialId = json['MaterialId'];
    materialIdItemNo = json['MaterialId__ItemNo'];
    materialIdName = json['MaterialId__Name'];
    qty = json['Qty'];
    salesman = json['Salesman'];
    supOrder = json['SupOrder'];
    description = json['Description'];
    image = json['Image'];
    imageUrl = json['Image__Url'];
    serviceAnalysis = json['ServiceAnalysis'];
    serviceSigner = json['ServiceSigner'];
    serviceSignerName = json['ServiceSigner__Name'];
    serviceSignTime = json['ServiceSignTime'];
    improvement = json['Improvement'];
    improvementSigner = json['ImprovementSigner'];
    improvementSignerName = json['ImprovementSigner__Name'];
    improvementSignTime = json['ImprovementSignTime'];
    processResult = json['ProcessResult'];
    processResultSigner = json['ProcessResultSigner'];
    processResultSignerName = json['ProcessResultSigner__Name'];
    processResultSignTime = json['ProcessResultSignTime'];
    customerFaceback = json['CustomerFaceback'];
    customerFacebackSinger = json['CustomerFacebackSinger'];
    customerFacebackSingerName = json['CustomerFacebackSinger__Name'];
    customerFacebackSignTime = json['CustomerFacebackSignTime'];
    resultTrack = json['ResultTrack'];
    resultTrackSinger = json['ResultTrackSinger'];
    resultTrackSingerName = json['ResultTrackSinger__Name'];
    resultTrackSignTime = json['ResultTrackSignTime'];
    createTime = json['CreateTime'];
    modifier = json['Modifier'];
    modifierNickName = json['Modifier__NickName'];
    creater = json['Creater'];
    createrNickName = json['Creater__NickName'];
    modifyTime = json['ModifyTime'];
    approver = json['Approver'];
    approverNickName = json['Approver__NickName'];
    approveTime = json['ApproveTime'];
    approveStatus = json['ApproveStatus'];
    iRowNumber = json['__RowNumber'];
    approveStatusName = json['ApproveStatus__Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['BillNo'] = this.billNo;
    data['BillDate'] = this.billDate;
    data['DptId'] = this.dptId;
    data['DptId__Name'] = this.dptIdName;
    data['CustomerId'] = this.customerId;
    data['CustomerId__Number'] = this.customerIdNumber;
    data['OrderNo'] = this.orderNo;
    data['OrderDate'] = this.orderDate;
    data['MaterialId'] = this.materialId;
    data['MaterialId__ItemNo'] = this.materialIdItemNo;
    data['MaterialId__Name'] = this.materialIdName;
    data['Qty'] = this.qty;
    data['Salesman'] = this.salesman;
    data['SupOrder'] = this.supOrder;
    data['Description'] = this.description;
    data['Image'] = this.image;
    data['Image__Url'] = this.imageUrl;
    data['ServiceAnalysis'] = this.serviceAnalysis;
    data['ServiceSigner'] = this.serviceSigner;
    data['ServiceSigner__Name'] = this.serviceSignerName;
    data['ServiceSignTime'] = this.serviceSignTime;
    data['Improvement'] = this.improvement;
    data['ImprovementSigner'] = this.improvementSigner;
    data['ImprovementSigner__Name'] = this.improvementSignerName;
    data['ImprovementSignTime'] = this.improvementSignTime;
    data['ProcessResult'] = this.processResult;
    data['ProcessResultSigner'] = this.processResultSigner;
    data['ProcessResultSigner__Name'] = this.processResultSignerName;
    data['ProcessResultSignTime'] = this.processResultSignTime;
    data['CustomerFaceback'] = this.customerFaceback;
    data['CustomerFacebackSinger'] = this.customerFacebackSinger;
    data['CustomerFacebackSinger__Name'] = this.customerFacebackSingerName;
    data['CustomerFacebackSignTime'] = this.customerFacebackSignTime;
    data['ResultTrack'] = this.resultTrack;
    data['ResultTrackSinger'] = this.resultTrackSinger;
    data['ResultTrackSinger__Name'] = this.resultTrackSingerName;
    data['ResultTrackSignTime'] = this.resultTrackSignTime;
    data['CreateTime'] = this.createTime;
    data['Modifier'] = this.modifier;
    data['Modifier__NickName'] = this.modifierNickName;
    data['Creater'] = this.creater;
    data['Creater__NickName'] = this.createrNickName;
    data['ModifyTime'] = this.modifyTime;
    data['Approver'] = this.approver;
    data['Approver__NickName'] = this.approverNickName;
    data['ApproveTime'] = this.approveTime;
    data['ApproveStatus'] = this.approveStatus;
    data['__RowNumber'] = this.iRowNumber;
    data['ApproveStatus__Name'] = this.approveStatusName;
    return data;
  }
}
