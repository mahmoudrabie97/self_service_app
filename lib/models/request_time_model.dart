class TimeRequestModel {
  String? jsonrpc;
  dynamic id;
  Result? result;

  TimeRequestModel({this.jsonrpc, this.id, this.result});

  TimeRequestModel.fromJson(Map<String, dynamic> json) {
    jsonrpc = json['jsonrpc'];
    id = json['id'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['jsonrpc'] = jsonrpc;
    data['id'] = id;
    if (result != null) {
      data['result'] = result!.toJson();
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
        response!.add(Response.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (response != null) {
      data['response'] = response!.map((v) => v.toJson()).toList();
    }
    data['message'] = message;
    return data;
  }
}

class Response {
  int? requestId;
  int? holidayStatusId;
  String? holidayStatusName;
  int? employeeId;
  String? employeeName;
  String? requestDateFrom;
  String? requestDateTo;

  Response(
      {this.requestId,
      this.holidayStatusId,
      this.holidayStatusName,
      this.employeeId,
      this.employeeName,
      this.requestDateFrom,
      this.requestDateTo});

  Response.fromJson(Map<String, dynamic> json) {
    requestId = json['request_id'];
    holidayStatusId = json['holiday_status_id'];
    holidayStatusName = json['holiday_status_name'];
    employeeId = json['employee_id'];
    employeeName = json['employee_name'];
    requestDateFrom = json['request_date_from'];
    requestDateTo = json['request_date_to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['request_id'] = requestId;
    data['holiday_status_id'] = holidayStatusId;
    data['holiday_status_name'] = holidayStatusName;
    data['employee_id'] = employeeId;
    data['employee_name'] = employeeName;
    data['request_date_from'] = requestDateFrom;
    data['request_date_to'] = requestDateTo;
    return data;
  }
}
