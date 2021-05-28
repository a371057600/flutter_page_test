class BussinessSaveModel {
  String objectId;
  Model model;

  BussinessSaveModel({this.objectId, this.model});

  BussinessSaveModel.fromJson(Map<String, dynamic> json) {
    objectId = json['ObjectId'];
    model = json['Model'] != null ? new Model.fromJson(json['Model']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ObjectId'] = this.objectId;
    if (this.model != null) {
      data['Model'] = this.model.toJson();
    }
    return data;
  }
}

class Model {
  String id;
  String billNo;
  String billDate;
  String dptId;
  String customerId;
  String orderNo;
  String orderDate;
  String materialId;
  int qty;
  String salesman;
  String supOrder;
  String description;
  String image;
  String serviceAnalysis;
  String serviceSigner;
  String serviceSignTime;
  String improvement;
  String improvementSigner;
  String improvementSignTime;
  String processResult;
  String processResultSigner;
  String processResultSignTime;
  String customerFaceback;
  String customerFacebackSinger;
  String customerFacebackSignTime;
  String resultTrack;
  String resultTrackSinger;
  String resultTrackSignTime;
  String createTime;
  String modifier;
  String creater;
  String modifyTime;
  String approver;
  String approveTime;
  int approveStatus;

  Model(
      {this.id,
      this.billNo,
      this.billDate,
      this.dptId,
      this.customerId,
      this.orderNo,
      this.orderDate,
      this.materialId,
      this.qty,
      this.salesman,
      this.supOrder,
      this.description,
      this.image,
      this.serviceAnalysis,
      this.serviceSigner,
      this.serviceSignTime,
      this.improvement,
      this.improvementSigner,
      this.improvementSignTime,
      this.processResult,
      this.processResultSigner,
      this.processResultSignTime,
      this.customerFaceback,
      this.customerFacebackSinger,
      this.customerFacebackSignTime,
      this.resultTrack,
      this.resultTrackSinger,
      this.resultTrackSignTime,
      this.createTime,
      this.modifier,
      this.creater,
      this.modifyTime,
      this.approver,
      this.approveTime,
      this.approveStatus});

  Model.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    billNo = json['BillNo'];
    billDate = json['BillDate'];
    dptId = json['DptId'];
    customerId = json['CustomerId'];
    orderNo = json['OrderNo'];
    orderDate = json['OrderDate'];
    materialId = json['MaterialId'];
    qty = json['Qty'];
    salesman = json['Salesman'];
    supOrder = json['SupOrder'];
    description = json['Description'];
    image = json['Image'];
    serviceAnalysis = json['ServiceAnalysis'];
    serviceSigner = json['ServiceSigner'];
    serviceSignTime = json['ServiceSignTime'];
    improvement = json['Improvement'];
    improvementSigner = json['ImprovementSigner'];
    improvementSignTime = json['ImprovementSignTime'];
    processResult = json['ProcessResult'];
    processResultSigner = json['ProcessResultSigner'];
    processResultSignTime = json['ProcessResultSignTime'];
    customerFaceback = json['CustomerFaceback'];
    customerFacebackSinger = json['CustomerFacebackSinger'];
    customerFacebackSignTime = json['CustomerFacebackSignTime'];
    resultTrack = json['ResultTrack'];
    resultTrackSinger = json['ResultTrackSinger'];
    resultTrackSignTime = json['ResultTrackSignTime'];
    createTime = json['CreateTime'];
    modifier = json['Modifier'];
    creater = json['Creater'];
    modifyTime = json['ModifyTime'];
    approver = json['Approver'];
    approveTime = json['ApproveTime'];
    approveStatus = json['ApproveStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['BillNo'] = this.billNo;
    data['BillDate'] = this.billDate;
    data['DptId'] = this.dptId;
    data['CustomerId'] = this.customerId;
    data['OrderNo'] = this.orderNo;
    data['OrderDate'] = this.orderDate;
    data['MaterialId'] = this.materialId;
    data['Qty'] = this.qty;
    data['Salesman'] = this.salesman;
    data['SupOrder'] = this.supOrder;
    data['Description'] = this.description;
    data['Image'] = this.image;
    data['ServiceAnalysis'] = this.serviceAnalysis;
    data['ServiceSigner'] = this.serviceSigner;
    data['ServiceSignTime'] = this.serviceSignTime;
    data['Improvement'] = this.improvement;
    data['ImprovementSigner'] = this.improvementSigner;
    data['ImprovementSignTime'] = this.improvementSignTime;
    data['ProcessResult'] = this.processResult;
    data['ProcessResultSigner'] = this.processResultSigner;
    data['ProcessResultSignTime'] = this.processResultSignTime;
    data['CustomerFaceback'] = this.customerFaceback;
    data['CustomerFacebackSinger'] = this.customerFacebackSinger;
    data['CustomerFacebackSignTime'] = this.customerFacebackSignTime;
    data['ResultTrack'] = this.resultTrack;
    data['ResultTrackSinger'] = this.resultTrackSinger;
    data['ResultTrackSignTime'] = this.resultTrackSignTime;
    data['CreateTime'] = this.createTime;
    data['Modifier'] = this.modifier;
    data['Creater'] = this.creater;
    data['ModifyTime'] = this.modifyTime;
    data['Approver'] = this.approver;
    data['ApproveTime'] = this.approveTime;
    data['ApproveStatus'] = this.approveStatus;
    return data;
  }
}
