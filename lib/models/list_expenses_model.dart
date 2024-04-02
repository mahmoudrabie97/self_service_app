class ListExpensesModel {
  String? jsonrpc;
  Null? id;
  Result? result;

  ListExpensesModel({this.jsonrpc, this.id, this.result});

  ListExpensesModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['jsonrpc'] = this.jsonrpc;
    data['id'] = this.id;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? status;
  List<Response>? response;
  String? message;

  Result({this.status, this.response, this.message});

  Result.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['response'] != null) {
      response = <Response>[];
      json['response'].forEach((v) {
        response!.add(new Response.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.response != null) {
      data['response'] = this.response!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class Response {
  String? name;
  int? productId;
  String? productName;
  int? currencyId;
  String? currencyName;
  int? companyId;
  String? companyName;
  int? employeeId;
  String? employeeName;
  double? unitAmount;

  Response(
      {this.name,
        this.productId,
        this.productName,
        this.currencyId,
        this.currencyName,
        this.companyId,
        this.companyName,
        this.employeeId,
        this.employeeName,
        this.unitAmount});

  Response.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    productId = json['product_id'];
    productName = json['product_name'];
    currencyId = json['currency_id'];
    currencyName = json['currency_name'];
    companyId = json['company_id'];
    companyName = json['company_name'];
    employeeId = json['employee_id'];
    employeeName = json['employee_name'];
    unitAmount = json['unit_amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['currency_id'] = this.currencyId;
    data['currency_name'] = this.currencyName;
    data['company_id'] = this.companyId;
    data['company_name'] = this.companyName;
    data['employee_id'] = this.employeeId;
    data['employee_name'] = this.employeeName;
    data['unit_amount'] = this.unitAmount;
    return data;
  }
}